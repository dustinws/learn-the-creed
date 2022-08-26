module Data exposing (..)

import Dict


type alias Creed =
    { name : String
    , slug : String
    , description : String
    , stanzas : List String
    }


empty : Creed
empty =
    { name = ""
    , slug = ""
    , description = ""
    , stanzas = []
    }


creeds : Dict.Dict String Creed
creeds =
    [ ( "soldiers-creed"
      , { name = "Soldier's Creed"
        , slug = "soldiers-creed"
        , description = "Become a soldier or just freshen up."
        , stanzas =
            [ "I am an American Soldier."
            , "I am a warrior and a member of a team."
            , "I serve the people of the United States, and live the Army Values."
            , "I will always place the mission first."
            , "I will never accept defeat."
            , "I will never quit."
            , "I will never leave a fallen comrade."
            , "I am disciplined, physically and mentally tough, trained and proficient in my warrior tasks and drills."
            , "I always maintain my arms, my equipment and myself."
            , "I am an expert and I am a professional."
            , "I stand ready to deploy, engage, and destroy, the enemies of the United States of America in close combat."
            , "I am a guardian of freedom and the American way of life."
            , "I am an American Soldier."
            ]
        }
      )
    , ( "nco-creed"
      , { name = "NCO Creed"
        , slug = "nco-creed"
        , description = "Crush the board and earn your stripes."
        , stanzas =
            [ "No one is more professional than I. I am a noncommissioned officer, a leader of Soldiers. As a noncommissioned officer, I realize that I am a member of a time honored corps, which is known as 'The Backbone of the Army.' I am proud of the Corps of Noncommissioned Officers, and will at all times conduct myself so as to bring credit upon the Corps, the military service, and my country; regardless of the situation in which I find myself. I will not use my grade or position to attain pleasure, profit, or personal safety."
            , "Competence is my watch-word. My two basic responsibilities will always be uppermost in my mind – accomplishment of my mission and the welfare of my Soldiers. I will strive to remain technically and tactically proficient. I am aware of my role as a noncommissioned officer, I will fulfill my responsibilities inherent in that role. All Soldiers are entitled to outstanding leadership; I will provide that leadership. I know my Soldiers, and I will always place their needs above my own. I will communicate consistently with my Soldiers, and never leave them uninformed. I will be fair and impartial when recommending both rewards and punishment."
            , "Officers of my unit will have maximum time to accomplish their duties; they will not have to accomplish mine. I will earn their respect and confidence as well as that of my Soldiers. I will be loyal to those with whom I serve; seniors, peers, and subordinates alike. I will exercise initiative by taking appropriate action in the absence of orders. I will not compromise my integrity, nor my moral courage. I will not forget, nor will I allow my comrades to forget that we are professionals, noncommissioned officers, leaders!"
            ]
        }
      )
    , ( "airborne-creed"
      , { name = "Airborne Creed"
        , slug = "airborne-creed"
        , description = "Put on your boots, boots, boots..."
        , stanzas =
            [ "I am an AIRBORNE TROOPER! A PARATROOPER!"
            , "I jump by parachute from any plane in flight. I volunteered to do it, knowing well the hazards of my choice. I serve in a mighty Airborne Force--famed for deeds in war--renowned for readiness in peace. It is my pledge to uphold it's honor and prestige in all I am--in all I do."
            , "I am an elite trooper--a sky trooper--a shock trooper--a spearhead trooper.  I blaze the way to far-flung goals--behind, before, above the foe's front line. I know that I may have to fight without support for days on end.  Therefore, I keep mind and body always fit to do my part in any Airborne task.  I am self-reliant and unafraid. I shoot true, and march fast and far. I fight hard and excel in every art and artifice of war."
            , "I never fail a fellow trooper. I cherish as a sacred trust the lives of men with whom I serve. Leaders have my fullest loyalty, and those I lead never find me lacking."
            , "I have pride in the Airborne! I never let it down!"
            , "In peace, I do not shrink the dullest of duty not protest the toughest training. My weapons and equipment are always combat ready. I am neat of dress--military in courtesy--proper in conduct and behavior."
            , "In battle, I fear no foe's ability, nor under-estimate his prowess, power and guile. I fight him with all my might and skills--ever alert to evade capture or escape a trap. I never surrender, though I be the last."
            , "My goal in peace or war is to succeed in any mission of the day--or die, if needs be, in the try."
            , "I belong to a proud and glorious team--the Airborne, the Army, my Country. I am its chosen pride to fight where others may not go--to serve them well until the final victory."
            , "I am the trooper of the sky! I am my Nation's best! In peace and war I never fail. Anywhere, anytime, in anything-- I AM AIRBORNE"
            ]
        }
      )
    , ( "infantrymans-creed"
      , { name = "Infantryman's Creed"
        , slug = "infantrymans-creed"
        , description = "Close with and destroy the enemy."
        , stanzas =
            [ "I am the Infantry. I am my country's strength in war, her detterent in peace. I am the heart of the fight, wherever, whenever. I carry America's faith and honor against her enemies. I am the Queen of Battle."
            , "I am what my country expects me to be the best trained soldier in the world. In the race for victory, I am swift, determined, and courageous, armed with a fierce will to win."
            , "Never will I fail my country's trust. Always I fight on, through the foe, to the objective, to triumph over all. If necessary, I fight to my death."
            , "By my steadfast courage, I have won 200 years of freedom. I yield not- to weakness, to hunger, to cowardice, to fatigue, to superior odds, for I am mentally tough, physically strong, and morally straight."
            , "I forsake not- my country, my mission, my comrades, my sacred duty."
            , "I am relentless. I am always there,now and forever. I AM THE INFANTRY! FOLLOW ME!"
            ]
        }
      )
    , ( "rangers-creed"
      , { name = "Ranger's Creed"
        , slug = "rangers-creed"
        , description = "Rangers Lead the Way!"
        , stanzas =
            [ "Recognizing that I volunteered as a Ranger, fully knowing the hazards of my chosen profession, I will always endeavor to uphold the prestige, honor, and high esprit de corps of the Rangers."
            , "Acknowledging the fact that a Ranger is a more elite Soldier who arrives at the cutting edge of battle by land, sea, or air, I accept the fact that as a Ranger my country expects me to move further, faster and fight harder than any other Soldier."
            , "Never shall I fail my comrades. I will always keep myself mentally alert, physically strong and morally straight and I will shoulder more than my share of the task whatever it may be, one-hundred-percent and then some."
            , "Gallantly will I show the world that I am a specially selected and well-trained Soldier. My courtesy to superior officers, neatness of dress and care of equipment shall set the example for others to follow."
            , "Energetically will I meet the enemies of my country. I shall defeat them on the field of battle for I am better trained and will fight with all my might. Surrender is not a Ranger word. I will never leave a fallen comrade to fall into the hands of the enemy and under no circumstances will I ever embarrass my country."
            , "Readily will I display the intestinal fortitude required to fight on to the Ranger objective and complete the mission though I be the lone survivor. Rangers lead the way!"
            ]
        }
      )
    , ( "pre-jump"
      , { name = "T11 ATPS Pre Jump"
        , slug = "pre-jump"
        , description = "Only for the seriously masochistic."
        , stanzas =
            [ "THE FIVE POINTS OF PERFORMANCE. The first point of performance is “PROPER EXIT, CHECK BODY POSITION, AND COUNT.” “JUMPERS HIT IT.” Upon exiting the aircraft, snap into a good tight body position. Keep your eyes open, chin on your chest, elbows tight into your sides, hands on the end of the reserve parachute, with your fingers spread. Bend forward at the waist, keeping your feet and knees together, knees locked to the rear, and count to 6000."
            , "At the end of your 6000 count, immediately go into your second point of performance, “CHECK CANOPY, GAIN CANOPY CONTROL AND IMMEDIATELY COMPARE YOUR RATE OF DECENT WITH YOUR FELLOW JUMPERS.” Reach up to the elbow-locked position and secure the front set of risers in each hand, simultaneously conducting a 360-degree check of you canopy. Your slider will be fully extended and begin to slide down the suspension lines. Move immediately into comparing your rate of descent with your fellow jumpers. If you are falling faster than your fellow jumpers or you cannot compare your rate of descent, activate your reserve parachute using the pull drop method. If, during your second point of performance, you find that you have twists and you are not falling faster than fellow jumpers, reach up and grasp a set of risers in each hand, thumbs down, knuckles to the rear. Pull the risers apart and begin a vigorous bicycling motion. When the last twist comes out, immediately check canopy and gain canopy control."
            , "Your third point of performance is “KEEP A SHARP LOOK OUT AT ALL TIMES AND CONSTANTLY COMPARE YOUR RATE OF DECENT.” Remember the three rules of the air and repeat them after me. “ALWAYS LOOK BEFORE YOU SLIP, ALWAYS SLIP IN THE OPPOSITE DIRECTION TO AVOID COLLISIONS, AND THE LOWER JUMPER ALWAYS HAS THE RIGHT AWAY.” Avoid fellow jumpers all the way to the ground by maintaining a 25-foot separation and continue to compare your rate of descent with fellow jumpers. During your third point of performance, release all appropriate equipment tie-downs."
            , "This brings you to your fourth point of performance, which is “PREPARE TO LAND.” At approximately 100 feet above ground level or tree top level, look below you to ensure there are no fellow jumpers and lower your equipment, then slip into the wind. Attempt to utilize the slip assist loops or slip assist tabs, and execute a one riser slip opposite your direction of drift. You will execute a one riser slip by grabbing 1-3 arm lengths, depending on the wind and hold it deep into your chest until you land. If the wind is blowing fr om your left, r each up with your left hand and gr ab either r iser on the left side and pull a 1-3 arm lengths slip deep into your chest until you land. If the wind is blowing from your front, reach up with either hand and grab either riser on the front side and pull a 1-3 arm lengths slip deep into your chest until you land. If the wind is blowing from your right, reach up with your right hand and grab either riser on the right side and pull a 1-3 arm lengths slip deep into your chest until you land. If the wind is blowing from your rear, reach up with either hand and grab either riser on the rear side and pull a 1-3 arm lengths slip deep into your chest until you land. If you decide to pull a two-riser slip, secure the risers opposite your direction of drift, and hold them deep into your chest. After you have slipped into the wind, you will assume a landing attitude by keeping your feet and knees together, knees slightly bent, elbows tight into your sides, with your head and eyes on the horizon. When the balls of your feet make contact with the ground put your chin down to your chest and execute a proper parachute landing fall."
            , "The fifth point of performance is “LAND.” You will make a proper parachute landing fall by hitting all five points of contact. Touch them, and repeat them after me. “BALLS OF YOUR FEET, CALF, THIGH, BUTTOCKS, AND THE PULL UP MUSCLE.” You will never attempt to make a standing landing. Remain on the ground and activate both of your canopy release assemblies using either the “HAND TO SHOULDER METHOD” or the “HAND ASSIST METHOD.” To activate your canopy release assembly using the “hand to shoulder” method, reach up with either hand and grasp the corresponding safety clip. Pull out and down on the safety clip, exposing the cable loop. Insert the thumb, from bottom to top, through the cable loop. Turn your head in the opposite direction, and pull out and down on the cable loop. To activate your canopy release assembly using the “hand assist” method, reach up and grasp the corresponding safety clip. Pull out and down on the safety clip, exposing the cable loop. Insert the thumb, from bottom to top, through the cable loop. Reinforce that hand with the other. Turn your head in the opposite direction, and pull out and down on the cable loop. Place your weapon into operation and remove the parachute harness."
            , "The next item I will cover is “RECOVERY OF EQUIPMENT.” Once you are out of the parachute harness, remove all air items from the equipment rings. Unzip and turn the universal parachutist recovery bag right side out. Place the parachute harness inside the universal parachutist recovery bag with the smooth side facing up. Secure the risers and place them under the parachute harness. Non-tactical: Elongate the suspension lines and canopy, removing all debris. Once you reach the bridle line, secure the drogue parachute and deployment sleeve in one hand and begin to figure-eight roll your canopy and suspension lines all the way to the universal parachutist recovery bag, leaving the drogue parachute, deployment sleeve, and bridle assembly on top of the main canopy. Tactical: Remain on a knee at the universal parachutist recovery bag. Begin pulling the suspension lines and canopy towards the universal parachutist recovery bag, stuffing them in as you go. Place the drogue parachute, deployment sleeve, and bridle assembly on top of the main canopy. Snap, do not zip, the universal parachutist recovery bag. Place the reserve parachute in the reserve parachute stowage pocket. Secure all of your equipment, conduct a 360-degree check of your area, and move out to your assembly area."
            , "The next item I will cover is the “ACTIVATION OF THE T-11 RESERVE PARACHUTE.” To activate the T-11 reserve parachute, you will use the pull drop method. “JUMPERS, HIT IT.” Maintain a good, tight body position. Grasp the rip cord handle with either hand. Throw your head back and to the rear, pull out on the rip cord handle, and drop it. Your reserve parachute will activate. Ensure neither hand is in front of the reserve parachute as it deploys. After you activate your T-11 reserve parachute, secure the reserve risers. At approximately 200 feet above ground level, slip into the wind, and prepare to land."
            , "The next item I will cover is “TOWED JUMPER PROCEDURES.” “JUMPERS, HIT IT.” If you become a towed jumper, and are being towed by your universal static line modified and are unconscious, you will be retrieved back inside the aircraft. If you are conscious, maintain a good tight body position with both hands covering your rip cord handle and an attempt will be made to retrieve you inside the aircraft. As you near the paratroop door, DO NOT REACH FOR US; continue to protect your rip cord handle. If you cannot be retrieved, your universal static line modified will be cut. Once you feel yourself falling free from the aircraft, count to 6000 and activate your reserve parachute using the pull drop method. If you are being towed by your equipment, regardless of whether you are conscious or unconscious, that item of equipment will be cut or jogged free, and your main canopy will deploy."
            , "The next item I will cover is “MALFUNCTIONS.” Remember to continue to check your canopy for any damage or irregularities and compare your rate of descent throughout your entire jump. If at any time you cannot compare your rate of descent or you are falling faster than your fellow jumpers, immediately activate your reserve parachute using the “PULL DROP METHOD.”"
            , "The next item I will cover is “COLLISIONS AND ENTANGLEMENTS.” “JUMPERS, HIT IT.” “CHECK CANOPY, GAIN CANOPY CONTROL AND IMMEDIATELY COMPARE YOUR RATE OF DECENT WITH YOUR FELLOW JUMPERS.” If you see another jumper approaching, immediately look, and then slip away. If you cannot avoid the collision, assume a spread eagle body position and attempt to bounce off the jumper’s canopy or suspension lines and immediately look, and then slip away. If you pass through the suspension lines, snap into a modified position of attention. With either hand protect your ripcord handle. With the opposite hand attempt to weave your way out of the suspension lines the same way you entered. Once clear, immediately look then slip away. If you become entangled, the higher jumper will climb down to the lower jumper using the hand under hand method. Once both jumpers are even, they will face each other and grasp each other’s left main lift web. Both jumpers will discuss which Parachute Landing Fall they will execute. Both jumpers will conduct the same Parachute Landing Fall. Neither jumper will execute a front Parachute Landing Fall. Both jumpers will continue to observe their canopies all the way to the ground. If one canopy collapses both jumpers will ride the one good canopy all the way to the ground. If both canopies collapse, both jumpers will immediately turn away, in order to create a clear path, and activate their reserve parachute using the PULL DROP METHOD. Should you find yourself on another jumper’s canopy, without rolling, use whatever means necessary to get off of the canopy and immediately activate your reserve parachute. Attempt to avoid the four corner vents on the canopy. Should you fall through a corner vent, stay where you are and be prepared to conduct a Parachute Landing Fall. If you have another jumper on top of your canopy, continually compare your rate of descent. If you are falling faster than fellow jumpers, immediately activate your reserve parachute using the PULL DROP METHOD."
            , "The next item I will cover is “EMERGENCY LANDINGS.” The first emergency landing I will cover is the “TREE LANDINGS.” If you are drifting toward the trees, immediately look then slip away. If you cannot avoid the trees and have lowered your equipment, look below you to ensure there are no fellow jumpers, and jettison your equipment making a mental note of where it lands. If you have not lowered your equipment, keep it on you to provide extra protection while passing through the trees. At approximately 200 feet above ground level, assume a good landing attitude by keeping your feet and knees together, knees slightly bent, and chin on your chest. When you make contact with the trees, rotate your hands in front of your face with your elbows high. Be prepared to execute a proper Parachute Landing Fall if you pass through the trees. If you get hung up in the trees and you do not feel you can safely lower yourself to the ground, stay where you are and wait for assistance."
            , "If you decide to climb down, jettison all unneeded equipment. Ensure that you maintain your helmet. Activate the quick release in your waistband. With either hand, apply inward pressure on the rip cord assembly. With the opposite hand, remove the top tuck tab. Maintain steady inward pressure and with the opposite hand insert it behind the rip cord assembly, and apply inward pressure. Grasp the rip cord handle with the opposite hand; pull it and drop it. With both hands, control the activation of the reserve parachute to the ground ensuring that all suspension lines and risers are completely deployed. Disconnect the left connector snap and rotate the reserve to the right. Attach the left connector snap to the triangle link on your right side. Seat yourself well into the saddle. Activate the quick release in the chest strap and completely remove the chest strap from the chest strap friction adapter. Grasp the right main lift web with either hand below the canopy release assembly and with the other hand activate the leg strap ejector snaps and climb down the outside of the reserve parachute. Caution must be taken when climbing down the T-11 reserve suspension lines because of the slippery coating applied to the suspension lines. Remember, when in doubt, stay where you are and wait for assistance."
            , "The next emergency landing I will cover is the “WIRE LANDING.” If you are drifting towards wires, immediately look and try to slip away. If you cannot avoid the wires, look below you to ensure there are no fellow jumpers and jettison your equipment, making a mental note of where it lands. Ensure that you maintain your helmet. Assume a landing attitude by keeping your feet and knees together, exaggerating the bend in your knees, eyes open, chin on your chest with your back arched. Place the palms of your hands high on the inside of the front set of risers with the elbows locked. When you make contact with the wires, begin a vigorous rocking motion in an attempt to pass through the wires. Be prepared to execute a proper Parachute Landing Fall in the event you pass through the wires. If you get hung up in the wires, do not attempt to lower yourself to the ground. Stay where you are and wait for assistance."
            , "The next emergency landing I will cover is the “WATER LANDING.” If you are drifting towards a body of water, immediately look then slip away. If you cannot avoid the water, look below you to ensure there are no fellow jumpers and lower your equipment. Next, jettison your helmet, making a mental note of where it lands. Activate the quick release in the waistband. Disconnect the left connector snap and rotate the reserve parachute to the right. Seat yourself well into the saddle and activate the quick release in the chest strap, completely removing the chest strap from the chest strap friction adapter. Regain canopy control. Prior to entering the water, assume a landing attitude by keeping your feet and knees together, knees slightly bent, and place your hands on both leg strap ejector snaps. When the balls of your feet make contact with the water, activate both leg strap ejector snaps, arch your back, throw your arms above your head, and slide out of the parachute harness. Be prepared to execute a proper Parachute Landing Fall if the water is shallow. Swim upwind, or upstream, away from the canopy. If the canopy comes down on top of you, locate a seam, and follow it to the skirt of the canopy."
            , "The next item I will cover is “LIFE PRESERVERS.” When jumping a life preserver, and you are unable to slip away from the water, lower your combat equipment, activate your life preserver, then jettison your combat equipment prior to making contact with the water. Be prepared to execute a proper Parachute Landing Fall if the water is shallow. Once in the water, activate both canopy release assemblies."
            , "The next item I will cover is “NIGHT JUMPS.” When conducting night jumps, be sure to give your canopy an extra look. If you have any reason to believe you are falling faster than fellow jumpers immediately activate your reserve parachute. Maintain noise discipline and a good interval between fellow jumpers. Be prepared to conduct a Parachute Landing Fall because you will hit the ground approximately five to 10 seconds before you think you will."
            , "The next item I will cover is “INSTRUMENT METEORLOGICAL CONDITIONS.” When jumping under IMC, do not lower your equipment until you have passed through the clouds. Do not slip unless you need to avoid a collision. If you have any type of malfunction or any reason to believe you are falling faster than fellow jumpers, immediately activate your reserve parachute using the pull drop method because you cannot compare your rate of descent with fellow jumpers. Ensure you recheck your canopy once you pass through the clouds."
            , "The final item I will cover is “PARACHUTE LANDING FALLS.” We will now move to the Parachute Landing Fall platform and conduct one satisfactory Parachute Landing Fall in each of the four directions."
            ]
        }
      )
    ]
        |> Dict.fromList
