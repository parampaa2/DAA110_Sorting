function [arr, snaps] = thanosMain(arr, descending, showsnap)
    snaps = 0;   
    while (size(arr)(2) > 1 && ~isSorted(arr, descending))
        arrsize = size(arr)(2);
        snaps += 1;
        snapIndices = heapMain(randperm(arrsize, arrsize)(1:floor(arrsize / 2)), 1);
        snapi = 1;
        while snapi <= size(snapIndices)(2)
            arr(snapIndices(snapi)) = [];
            snapi += 1;
        endwhile
        if showsnap
            disp("Unsorted! It's time for thanos to SNAP! bye Avengers!")
            disp(arr)
        endif
    endwhile
    if showsnap
        % NOBODY CAN STOP ME FROM SHOWING THE GORGEOUS THANOS ASCII ART MHUAHAHAHA
        disp("                      `.://++++++//////:--...``\n                   `-/+++++++++++++++++++++++///::-..``\n                `:+sooooosooo+o++oo+++++/+++++////::::::-.``\n              .+yysooooo++ooooossosoooooooo+++++++//:::::----..`\n           `:sddhhssoooo+oooooosssssossoooooooo++//////:::----....``\n         `+hmmmddhyssoooooooossosssssoossssooo++++///////::--........`\n       `+dmNNNmdhyysoosossssoososoooooossssooo+++////////::--..........`\n      -hmNNNNmdhyyssssoooooooosoo+++oooossooooo++///////:::---...........\n     /dmddmmdhhyssssoooossssyssooooossssssooo+++//://////::---............\n    :hddhhhhhyssssosssosssyyyysosssssssssssoooo+++///////:-----............\n   -yhyysssssssysoossssosysyyysssssyysssyysssso+++///////::-----.....-......\n  `+yyssossssyyyyssyyyyyyhhhyyyyyyyyyysssysssoo+++///////::-::---..-.........\n  -ssysoosssssyyysyyyssssysysssssssyyssssssssssoo++/++///::-:----.-.....-.....\n  /sssoooossysyssssssssyyhhyyyyyyyyyyyssssssssoo+++++///:::-/:--:---..-.-...--`\n `ooooooo+ssysossyyhyhhyyhyyyyyyyyyysssssoooo++++++++++//:::/--------.-.----.-.\n -ooosooooooosossssyyyyyyysssyyyyssyyyyssyssso+++o+++++///://:-:-----...-------`\n :oossso+o+osssoosyyhhhhhhhhhyyyyysyyyssyyysso+++++++++++/:o+::-::---.------::-.\n /+ossoo++s+sssssyyyyyysyyhhyyyyssssyyssyhhysoo+//+ooooo+/:o+::-::---.----:::::.\n`/oooooo++ssossyoyyyyyysyyyyyhyyssssyyssshdhsso+/::+ssss+//so+:::--:-----:::///.\n`/oooooo++sysyyhysyyyyysyyyhhhhyoooshyyooyhhyso+/:/sssss+:+yo+/:::------::://+/.\n /+oooooo+ossyhyssyyhhyysssyhhhhsooohhyo+ohhyso+:+oso+++::o+:----:-:/--.:-://+/.`\n :++ooooo+shyyhyyoyyhyyyyyyyyyysso++yhyso+sss+///////::-----------:/+:-.::/::/:..\n ./++++ooossssoossoosssssyyssoooo+/oyhyso+/+/::----.......----::--///:---:--::-.``\n `:/+o+o+++++oo+////////////+////:oyyso+++/:-....```````..-.`....--::---.:++/:-`...\n  -/+oooo//++oo+///::----..-----/+oossooo/-...``````````..-----.`......--::----..-`\n  `/+o+ss++/+++//--...-```.....--:oyhhyso+:..`````...-:/+++//:--.-:///:--::+/::-.:`\no/-:+osso++//:-.-..:-::--::///+//+osyhhyo+:-.`````.-/++oo++////////+++::/:-:---:--`\n/so/oo+so++/:--//+ooo+++++++o+oo++ooyhhys+-......-:/+sooooooo+ooooooo+/:::-------.`\n.+soyyss+ssooo++++++ooo+ooo+ooosssosyhhys+:-.:---:/++ooooooooooossoo++//:/--..::::`\n-o/+oooysyyssooosssssooooosyysssosssyhhhso+:.-::-:/++oooossssosyysoo++/:/::----::+.\n:+/osssysyyyssooooossooosyyyyyoossoshhhyyo+/--+/:-.:+osyssssosyssooo+/:+/:--::::+o:`\n:++oooyysyyyyyysoo+sysyyyhhys/+syysyhhysyso+:-::-....-//++++yyyooo++//++/::::-//++/`\n-/+ooosssyyyyyysssooyhhhhyo+:+o+ooosyhsoos+:...``....-:/:://://+//:/oso+:::-::+o++/.\n.++oossssyoosyyyysysssss+/:+yyys+:::///:::-.........-:/:+o+///:-:://///:---:-/oo:+/-\n.+/ooossyyhsooossssso+:--+yhyyyysssoo+:-..........--:::o++//:-/++oo+:....://:oo+/+/:`\n`+/ooooooosyho++++/:---+yooyhyyyyyyyyy+/////+/::::::--++/::-.::///::+++:-:/:-oo+:+/:`\n`o:+so++oossoo+/----/oyyyssoosyyyyyyhs//+oo+oo++/+/::++::-.-:-----/o+/::-./:-os/.++:.\n`+:+o+o++//::-.:+syss+oossss++ssysyss+///ooooso++/:-o/:::.-:-....://////-.-::oo--+o:-\n .-/+++oo+:.::/+o+++oss+osssysosssysso+/+ossss+:/-----......`` `./+++++/:../:/o.:+o+:\n  .///+//:--osoo/:::/+ssoossoss+++o+oo+oooos+:--..-:-..---....-::+/++++/:-.:--o./:///\n  .///++/::/oo+//:--::/+++///////::::::::::---:-.-+o+/-/+:..:///++::o///:-.:::+./--:/\n  `/+//++/:/oo+//:/+:.```:-/++:/sss+:sss+/-+osys++hhs+:/+//++///+/:.+o:/:..:::/./.-:+\n  `/+///+++//++//++so++:--//yhsyNNNmoNNNdh+dNmmho+hs+:::++++///-//:--o:--.:::/+./.-/o\n   /++///+++/++++oosssoo++/-/+//yyyh/hdhdyo+yydy:oso++++//++o+:-:/::-/:...//::/.:--:+\n   /+++++/+o+/o+osoosysosoo++//+s+syyyohhhyoysso+++++++++//oo/::-//:.::..-//:::.--://\n   :++++o+/+++/++oo+ossosyysooooo+++++++++++soo++++++s+o++::o+::.//:.--.`://:/:..-:/+\n   -++o+++/++s+//os+oss+osyyossyyyoyysysss+oysyysoo+/yoo+/-:o+::.:/:-.:-`-//:+-..-:/+\n   ./+++++++oso+/+o+ossoooososyyys+yyyyyso//sosso+/::ooo/:-/++::.:+/:.:-.-:/-+-..-:/:\n   ./+++++++osso/+syosyo+syhsoosso/+oooo+/:-+ossoo/-/sso+:./o+::.:+//.--..//:+...-//.\n   `////++++osso/+syoyhy+osysosssoo/ooss+/::+yyys+/:/sso/:.+s+:-.://:-.--.:/:/...-//`\n    :////++o+sss++ssoyhh+osyy+osys+:oosoo/:-/ossoo/::ooo+:-+o+::.:+/:-.--.-/:+..-:::\n    -:///++++osyo+oo+shhsosyyo+oso+:+osoo+:::osso+/:-+oso/./oo/:--/:::..-:--:/.-:::.\n    :::/:+o+++syo+os+syhssyyyo/ooo+/+ooo++/-:ooso++/:+soo/-/so+/:.:::--.:::.::.:///\n    .+/://++++oso+oo+sssosyyyo+oyyo//oooo+//:syysoo///syo/-:sso/:-./:--.::--::.:::-\n     :+:://++++o++o+/sssoosyyy++soo++yssoo+/:oyssooo+:oso+:-+so//:---::----::.-/::`\n      :/:://++++++so+oso+ossso++sss++sssso+/::oyysso+//sso/:-o+///:.-//:-..::.-:-.\n       :+::://+//+oo++os+ossyyosyyo+osyyssso/:osssyso/-oso+/--o/:/:/::/:-../--:-.`\n        -/:-:/+////+osso+ssyysoysssoosyyyyyo::oyssyso/-/soo/--://///:-::--./-:..`\n         .//:-:/:://sso++osyyo+osyyooshhhyso+:+ososo//::yso+:/-.:///:-.:::.-..``\n          `//:-:/://oy++sosysoosyyyo+osyyyys/-/oooo+++::yyo++/:..+++/:--:/:..``\n            -++::://os++ossyoooysyy+/oosyss+/-:+so++/+/:syo+/::-.++/::/--+-```\n             .+++/:/oo/+ooyys+oyssy+/+osssoo/--+s+++++/-+o+//::..o+:--:-./.``\n               :+o+/oo++ooss++osssoo//+ssoo++:-+oo++++/:+s++//-..+/::-/-..``\n                `/o+/o/+soss+/++ooso//+++++++:-ooo+++//:+o//::-..+/:---`.`\n                  .+///+ooooo+/+++o+/://++///-./++////:-:+/::-.`-/:-..``\n                    -/::/+++oo//++/+:-:///:---.///::::-.:///:-.`.-..``\n                     `---://++/://::--.-:::---.-/::---.`-::--.``````\n                        `.-::::-::----..-:---.``----...`.-...````\n                          `.--....-...```....``` ...`.````````\n                             `.-:::-...````````````````````\n                                 `..----..````````````")
    endif
endfunction