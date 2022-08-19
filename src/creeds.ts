export interface Creed {
  readonly name: string;
  readonly slug: string;
  readonly description: string;
  readonly stanzas: string[];
}

const creeds: Map<string, Creed> = new Map()
  .set('soldiers-creed', {
    name: 'Soldier\'s Creed',
    slug: 'soldiers-creed',
    description: 'Become a soldier or just freshen up.',
    stanzas: [
      'I am an American Soldier.',
      'I am a warrior and a member of a team.',
      'I serve the people of the United States, and live the Army Values.',
      'I will always place the mission first.',
      'I will never accept defeat.',
      'I will never quit.',
      'I will never leave a fallen comrade.',
      'I am disciplined, physically and mentally tough, trained and proficient in my warrior tasks and drills.',
      'I always maintain my arms, my equipment and myself.',
      'I am an expert and I am a professional.',
      'I stand ready to deploy, engage, and destroy, the enemies of the United States of America in close combat.',
      'I am a guardian of freedom and the American way of life.',
      'I am an American Soldier.',
    ],
  })
  .set('nco-creed', {
    name: 'NCO Creed',
    slug: 'nco-creed',
    description: 'Crush the board and earn your stripes.',
    stanzas: [
      'No one is more professional than I. I am a noncommissioned officer, a leader of Soldiers. As a noncommissioned officer, I realize that I am a member of a time honored corps, which is known as \'The Backbone of the Army.\' I am proud of the Corps of Noncommissioned Officers, and will at all times conduct myself so as to bring credit upon the Corps, the military service, and my country; regardless of the situation in which I find myself. I will not use my grade or position to attain pleasure, profit, or personal safety.',
      'Competence is my watch-word. My two basic responsibilities will always be uppermost in my mind – accomplishment of my mission and the welfare of my Soldiers. I will strive to remain technically and tactically proficient. I am aware of my role as a noncommissioned officer, I will fulfill my responsibilities inherent in that role. All Soldiers are entitled to outstanding leadership; I will provide that leadership. I know my Soldiers, and I will always place their needs above my own. I will communicate consistently with my Soldiers, and never leave them uninformed. I will be fair and impartial when recommending both rewards and punishment.',
      'Officers of my unit will have maximum time to accomplish their duties; they will not have to accomplish mine. I will earn their respect and confidence as well as that of my Soldiers. I will be loyal to those with whom I serve; seniors, peers, and subordinates alike. I will exercise initiative by taking appropriate action in the absence of orders. I will not compromise my integrity, nor my moral courage. I will not forget, nor will I allow my comrades to forget that we are professionals, noncommissioned officers, leaders!',
    ],
  })
  .set('airborne-creed', {
    slug: 'airborne-creed',
    name: 'Airborne Creed',
    description: 'Put on your boots, boots, boots...',
    stanzas: [
      'I am an AIRBORNE TROOPER! A PARATROOPER!',
      'I jump by parachute from any plane in flight. I volunteered to do it, knowing well the hazards of my choice. I serve in a mighty Airborne Force--famed for deeds in war--renowned for readiness in peace. It is my pledge to uphold it\'s honor and prestige in all I am--in all I do.',
      'I am an elite trooper--a sky trooper--a shock trooper--a spearhead trooper.  I blaze the way to far-flung goals--behind, before, above the foe\'s front line. I know that I may have to fight without support for days on end.  Therefore, I keep mind and body always fit to do my part in any Airborne task.  I am self-reliant and unafraid. I shoot true, and march fast and far. I fight hard and excel in every art and artifice of war.',
      'I never fail a fellow trooper. I cherish as a sacred trust the lives of men with whom I serve. Leaders have my fullest loyalty, and those I lead never find me lacking.',
      'I have pride in the Airborne! I never let it down!',
      'In peace, I do not shrink the dullest of duty not protest the toughest training. My weapons and equipment are always combat ready. I am neat of dress--military in courtesy--proper in conduct and behavior.',
      'In battle, I fear no foe\'s ability, nor under-estimate his prowess, power and guile. I fight him with all my might and skills--ever alert to evade capture or escape a trap. I never surrender, though I be the last.',
      'My goal in peace or war is to succeed in any mission of the day--or die, if needs be, in the try.',
      'I belong to a proud and glorious team--the Airborne, the Army, my Country. I am its chosen pride to fight where others may not go--to serve them well until the final victory.',
      'I am the trooper of the sky! I am my Nation\'s best! In peace and war I never fail. Anywhere, anytime, in anything-- I AM AIRBORNE!',
    ],
  })
  .set('infantrymans-creed', {
    slug: 'infantrymans-creed',
    name: 'Infantryman\'s Creed',
    description: 'Close with and destroy the enemy.',
    stanzas: [
      'I am the Infantry. I am my country\'s strength in war, her detterent in peace. I am the heart of the fight, wherever, whenever. I carry America\'s faith and honor against her enemies. I am the Queen of Battle.',
      'I am what my country expects me to be the best trained soldier in the world. In the race for victory, I am swift, determined, and courageous, armed with a fierce will to win.',
      'Never will I fail my country\'s trust. Always I fight on, through the foe, to the objective, to triumph over all. If necessary, I fight to my death.',
      'By my steadfast courage, I have won 200 years of freedom. I yield not- to weakness, to hunger, to cowardice, to fatigue, to superior odds, for I am mentally tough, physically strong, and morally straight.',
      'I forsake not- my country, my mission, my comrades, my sacred duty.',
      'I am relentless. I am always there,now and forever. I AM THE INFANTRY! FOLLOW ME!',
    ],
  })
  .set('rangers-creed', {
    slug: 'rangers-creed',
    name: 'Ranger\'s Creed',
    description: 'Rangers lead the way!',
    stanzas: [
      'Recognizing that I volunteered as a Ranger, fully knowing the hazards of my chosen profession, I will always endeavor to uphold the prestige, honor, and high esprit de corps of the Rangers.',
      'Acknowledging the fact that a Ranger is a more elite Soldier who arrives at the cutting edge of battle by land, sea, or air, I accept the fact that as a Ranger my country expects me to move further, faster and fight harder than any other Soldier.',
      'Never shall I fail my comrades. I will always keep myself mentally alert, physically strong and morally straight and I will shoulder more than my share of the task whatever it may be, one-hundred-percent and then some.',
      'Gallantly will I show the world that I am a specially selected and well-trained Soldier. My courtesy to superior officers, neatness of dress and care of equipment shall set the example for others to follow.',
      'Energetically will I meet the enemies of my country. I shall defeat them on the field of battle for I am better trained and will fight with all my might. Surrender is not a Ranger word. I will never leave a fallen comrade to fall into the hands of the enemy and under no circumstances will I ever embarrass my country.',
      'Readily will I display the intestinal fortitude required to fight on to the Ranger objective and complete the mission though I be the lone survivor.',
      'Rangers lead the way!',
    ],
  });

export default creeds;
