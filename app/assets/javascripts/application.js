// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

//WAIT FOR DOM TO LOAD BEFORE ATTACHING EVENT LISTENERS
// $(function(){

//     // note use single ticks (') for starting strings
//     // and you can use double ticks (") inside
//     //      our initial template
//     //      var bucket_template = _.template('<div id="<%= id %>"> <%= title %> </div>')

//     // We add delete and checkbox buttons
//     var member_template = _.template('<div id="<%= id %>">' +
//                                      '<hr>' +
//                                      'Name: <%= first_name %> <%= last_name %><br>' +
//                                      'Email: <%= email %><br>' +
//                                      'Interests: <%= interests %><br>' +
//                                      'dependent: <%= dependent %><br>' +
//                                      '<button data-id="<%= id  %>" data-method="delete">Delete</button></div>')


//     // We need to grab the SUBMIT button it has the `name="commit"`
//     $('input[id="member-submit"]').click(function(event){
//         // keep the page from reloading
//         event.preventDefault()

//         // Recall when talked about the params hash?
//         // We want to build that hash up and send it
//         // to server...  so we need to grab it from
//         // each input field

//         // Grab fields
//         // var $title = $('#bucket_item_title')
//         // var $description = $('#bucket_item_description')

//         var $first_name = $('#member_first_name')
//         var $last_name = $('#member_last_name')
//         var $email = $('#member_email')
//         var $interests = $('#member_interests')
//         var $dependent = $('#member_dependent')
//         var $active = $('#member_active')
//         var $permalink = $('#member_permalink')
//         var $created = $('#member_created_at')
//         var $id = $('#member_id')
//         // If we type
//         //
//         //      var $title = $('#bucket_item_title')
//         //      console.log($title)
//         //
//         // in our webconsole we see it returns the input field
//         //      console.log($title.val())
//         // returns the actual value in that field

//         // Build params
//         // var params = { bucket_item: {title: $title.val(),
//         //                              description: $description.val() }}

//         var params = { member: {first_name: $first_name.val(),
//                                      last_name: $last_name.val(),
//                                      email: $email.val(),
//                                      interests: $interests.val(),
//                                      dependent: $dependent.val(),
//                                      active: $active.val(),
//                                      permalink: $permalink.val() }}
//          // We have to clear the form after someone clicks
//         // so we replace the field value with an empty string
//         // $title.val("")
//         // $description.val("")
//         $first_name.val("")
//         $last_name.val("")
//         $email.val("")
//         $interests.val("")
//         $dependent.val("")
//         $active.val("")
//         // Finally we need to make an ajax request with those
//         // params we created

//         // We use post because we are creating!b
//         // What route are we posting to? Why?
//         $.post("/members", params).done(function(response_data){
//             console.log(response_data);

//             var member_html = member_template(response_data)

//             // Let's prepend that to the div
//             $("#members").prepend(member_html);

//         })

//     })


//     // Make sure we display all of our objects
//     // We can make a GET request
//     $.get("/members.json").done(function(response_data){

//         //We can check to make sure we get a respone back
//         // by logging
//         console.log(response_data);

//         //go through each item in the response data
//        _.each(response_data, function(item){

//            //render the item as html
//            var member_html = member_template(item)

//            //put the bucket_html in the div
//            $('#members').prepend(member_html)
//         })

//     });

//     // Begins editing template

//     //delegate to all bucket_items a click event handler on the delete button
//     $('#members').on('click', 'button[data-method="delete"]', function(event){
//         console.log(this);
//         //grab this button with jQuery
//         //console.log($(this).parent())

//         //could say $(this).parent().attr("id")
//         //and delete that item

//         var id = $(this).attr("data-id")

//         // 1.)  We need to use the id to
//         //      send a delete request over ajax --
//         //      we also have a controller method
//         //      to hanlde that delete

//         // 2.)  When that happens we need to remove it
//         //      from the DOM

//         $.ajax({
//             url: "/members/"+id,
//             method: "DELETE"
//         }).done(function(data){
//             var item_id = "#"+id;
//             $(item_id).remove();
//         })
//     });


//     //Let's work on our checkbox
// //     $('#members').on('click', 'input[type="checkbox"]', function(event){
// //          var id = $(this).attr('data-id');
// //          var checked = this.checked;
// //          console.log(checked);


// //      $.ajax({
// //         url: "/members/" + id,
// //         method: "PUT",
// //         data: {bucket_item: {completed: checked}}
// //      })
// // });

// })