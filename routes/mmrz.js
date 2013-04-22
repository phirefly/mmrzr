
/*
 * GET users listing.
 */

exports.list = function(req, res){
  res.render('index', { title: 'mmrzr: start memorizing' });
};