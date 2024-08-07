class xid expands actor nousercreate; //ignore me, another dummy actor, it's like ID but with an x
/* commence declaration of stupidly complicated and impractical ideas to flood the class tree even more:
   skaarj subclass that can move around like usual (and can come back to being static) while playersonly effect is in place... 
   maybe by spawning dynamiczoneinfo?
genericahandler -> put all your magic nonsense here. aptele will need a facelift and it will go here
injectorhandler -> everything random goes here, it must all be handled by a single inventory item (maybe add a monitor to the syringe?)
injectorcditems -> content delivery, grabbable, has a world model. skin (and type) depends on random function picked each time a map restarts
goal receiver machine -> eats mem, eats shit, kills brain
langua, optional goal declaration eater... globalconfigs! 
cult object testing item for goal tester
//todo move this to struct, declare in parent
var (LevelLinearGoals) 		string  LinGoalTags(16)
var (LevelOptionalGoals) 	string  OptGoalTags(16)
var (WkspcFoundItemGoals) 	string  FindItemGoals(16)
var (WkspcActOneItemGoals) 	string  ActOneItemGoals(16)
var (WkspcActTwoItemGoals) 	string  ActTwoItemGoals(16)
var (WkspcActThreeItemGoals) 	string  ActThreeItemGoals(16)


*/

defaultproperties
{
}
