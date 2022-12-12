<%-- 
    Document   : index
    Created on : Oct 21, 2022, 12:07:04 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
    <head>
        <title>Dental Doctor Desk</title>
        <link href="setting.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <script src="datavalid.js" language="javascript">
        </script>
        <script type="text/javascript">
            function expand(id) {
                var sub = document.getElementById(id);
                var arrow = document.getElementById(id + '_arrow')
                if (sub.style.display === 'none') {
//                    alert(sub.style.display);
                    sub.style.display = 'block';
                    arrow.innerHTML = "▼"

                } else {
                    sub.style.display = 'none';
                    arrow.innerHTML = "△"

                }

            }
        </script>
        <style>
            h5{
                text-decoration: underline;
            }
        </style>
    </head>

    <body>
        <header>
            <%@include file="Includes/header.jsp" %>
        </header>
        <main class="main" >

            <div class="tab" >
                <h4>Cosmetic Injections Near You </h4>
                <div class="align_right_img" style="width: 15%" id="ciny_arrow" onclick="expand('ciny')"> △ </div>
                <div class="subTab" id="ciny" style="display: block">
                    <img class="serviceImg" src="services/CI.jpg">
                    <div>
                        <p>Cosmetic injections are a popular wrinkle treatment for men and women of all ages. This treatment is a great way to smooth out fine lines and wrinkles as well as prevent any signs of aging in the future. We offer cosmetic injections near you, where our highly skilled dental team performs quality treatments that have lasting effects. This treatment can keep your face youthful for an average of 3 to 4 months. Receiving cosmetic injections in Willow Park can also enhance an asymmetrical or gummy smile.</p>
                        <br/>
                        <h2>How Many Cosmetic Injections Will I Need?</h2>
                        
                        

                        <p style="clear:both">All these factors will determine how many units will be needed for your treatment. Our doctors at Nexa Dental are highly trained and experienced in performing this procedure. Dr. Dhaduk or Dr. Donga will determine the right number of units needed for optimum results. A follow-up <a href=<%= request.getAttribute("login-email") == null ? "patient.jsp" :("HomeController?path=appointment&email="+request.getAttribute("login-email") ) %> >appointment</a> is recommended 2 weeks after your initial treatment in order to monitor results.</p>
                    </div>

                </div>
            </div>
            <div class="tab">
                <h4>
                    Invisalign Near You
                </h4>
                <div class="align_right_img" style="width: 15%;" id="iny_arrow" onclick="expand('iny')"> △ </div>
                <div class="subTab" id="iny" >
                    <img class="serviceImg" src="services/iny.jpg">

                    <p>
                        Invisalign is a modern treatment that has eliminated the inconvenience of metal brackets and wires. With new technology, Invisalign is a comfortable and removable set of aligners that are virtually invisible when being worn. At Nexa Dental, we are excited to offer Invisalign near you!
                    </p>
                    <h2>What to Expect When Receiving Invisalign in Willow Park?</h2>
                    <h5 >Consultation</h5>
                    <p>During a consultation, our doctor will meet with you to discuss the best options for your teeth and determine whether you are a good candidate for Invisalign.</p>
                    <h5>
                        Customization
                    </h5>
                    <p>
                        Once your doctor has determined that you are a good candidate for Invisalign, they will take impressions and X-rays of your teeth so that they can create your custom aligners.
                    </p>
                    <h5>
                        Treatment
                    </h5>
                    <p>
                        You will receive a series of customized aligners to wear during your treatment. These aligners will be worn daily and only removed when brushing your teeth or eating.
                    </p>
                    <h5>
                        Progress
                    </h5>
                    <p>
                        A new set of aligners will be given to you at certain intervals during your treatment. Your progress will be measured through regularly scheduled checkups.
                    </p>
                    <h5>
                        Completion
                    </h5>
                    <p>
                        Once you receive and start wearing your custom aligners, your teeth will start to shift into their new positions. Contact us today to schedule a consultation for Invisalign near you!
                    </p>
                </div>

            </div>
            <div class="tab">
                <h4>
                    Dental Implants Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="diny_arrow" onclick="expand('diny')"> △ </div>
                <div class="subTab" id="diny" >
                    <img class="serviceImg" src="services/diny.jpg">

                    <p>
                        Fixing gaps and replacing missing teeth is not only important for your appearance however it prevents plaque and tartar from settling into those gaps. If the bacteria is not removed, it can cause cavities, tooth decay, and sometimes even gum disease.
                    </p>
                    <p>
                        Did you know your teeth can shift out of place? When there is nothing to maintain the space between a gap, it can cause your teeth to move out of place. This can result in issues with biting, sensitivity, and also affect the function of your jaw. A common way to close the gap and replace missing teeth is with dental implants. Some dentists prefer dental implants over bridges and dentures because they are a more permanent solution. We provide quality dental implants near you.
                    </p>
                    <h2>
                        How Do Dental Implants Work?
                    </h2>
                    <p>
                        A dental implant is composed of 3 parts: The implant screw, abutment, and the manufactured crown.
                    </p>
                    <p>
                        The implant screw is surgically implanted in your jawbone and acts as a replacement for the root of the tooth. The abutment is what joins the implanted screw to the manufactured crown. The crown looks just a natural tooth and is installed on the abutment. Once everything is healed, the dental implant looks and feels just like a natural tooth. Dental implants are also just as strong as a natural tooth!
                    </p>
                    <p>
                        If a dentist determines that you are a good candidate for dental implants in Willow Park, your dentist will come up with a treatment plan to decide the best way to place them. Our experienced and professional dentists at Nexa Dental perform a guided surgery that is a non-invasive procedure. We want to make sure you feel confident going into any procedure with our dental team. Call us to book a consultation for dental implants near you at Nexa Dental. We are more than happy to assist you with any questions you may have.
                    </p>
                </div>

            </div>
            <div class="tab">
                <h4>
                    Dental Cleanings and Check-Ups Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="dccny_arrow" onclick="expand('dccny')"> △ </div>
                <div class="subTab" id="dccny" >
                    <img class="serviceImg" src="services/dccny.jpg">

                    <p>
                        Receiving professional teeth cleaning at least twice a year is essential for the success of your oral health. An invisible layer called plaque is coated on your teeth when consuming food or drinks. Plaque and tartar removal prevents tooth decay or other serious issues like cavities. Tooth decay is caused by bacteria in the mouth that convert sugar into acids, which erodes your tooth’s enamel. Once your tooth starts to decay, holes will appear on the enamel and create cavities. It is vital to brush twice a day and floss once a day to prevent the plaque from hardening into tartar, as well as attend regular dental cleanings near you.
                    </p>
                    <h5>
                        Dental Cleanings in Willow Park
                    </h5>
                    <p>
                        Although it is vital to take care of your oral health at home, brushing and flossing cannot remove all the buildup caused by bacteria. Booking a dental cleaning in Willow Park at our dental clinic is the best way to remove plaque and tartar entirely. At Nexa Dental, we are committed to providing the highest quality of services for our patients!
                    </p>

                    <p>
                        When you schedule a dental cleaning in Willow Park, it helps keep your teeth clean and prevents the buildup of plaque in the first place. In addition to brushing and flossing daily, scheduling regular dental check-ups near you will ensure you maintain a clean mouth and healthy smile.
                    </p>
                    <p>
                        If you are looking to receive dental cleanings near you, please contact us to schedule an <a href=<%= request.getAttribute("login-email") == null ? "patient.jsp" :("HomeController?path=appointment&email="+request.getAttribute("login-email") ) %> >appointment</a> today!
                    </p>
                </div>
            </div>
            <div class="tab">
                <h4>
                    Dental Crowns Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="dcny_arrow" onclick="expand('dcny')"> △ </div>
                <div class="subTab" id="dcny" >
                    <img class="serviceImg" src="services/dcny.jpg">

                    <p>
                        Dental crowns are custom-designed caps that are placed over the surface of your tooth. Metal used to be the most common material used to make dental crowns however, all-ceramic crowns are now available. We provide all-ceramic dental crowns near you that are more discrete and blend in with your natural teeth. The benefits of this type of crown compared to the metal ones is that it’s less visible and it’s also equally as durable. Dental crowns can last longer than a decade if they are well maintained and properly cared for!                    </p>
                    <h2>
                        What is the Procedure for Receiving Dental Crowns in Willow Park?
                    </h2>
                    <p>
                        If you are looking to receive dental crowns near you, the procedure is completed in two appointments. Your dentist will take impressions and reshape your tooth during the first <a href=<%= request.getAttribute("login-email") == null ? "patient.jsp" :("HomeController?path=appointment&email="+request.getAttribute("login-email") ) %> >appointment</a>. The impressions will be used to create your custom crown that matches the size, shape, and colour of your natural teeth. The fabrication process can take a few weeks, so your dentist will provide you with a temporary crown to protect your tooth inappointment the meantime.
                    </p>

                    <p>
                        During the second visit, your dentist will permanently cement the custom crown on to your tooth. The custom dental crown will restore the original appearance and function of your tooth. If you are interested in receiving dental crowns in Willow Park, contact us today to schedule a consultation!
                    </p>
                </div>
            </div>
            <div class="tab">
                <h4>
                    Dentures Bridges Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="dbny_arrow" onclick="expand('dbny')"> △ </div>
                <div class="subTab" id="dbny" >
                    <img class="serviceImg" src="services/dbny.jpg">

                    <p>
                        Dental bridges are used to fill in gaps between a single tooth or multiple missing teeth. At Nexa Dental, we offer this service as one of our many restorative dentistry options. Learn more to see if you are a good candidate for this service!
                    </p>
                    <h2>
                        What are the Benefits of Receiving Dental Bridges in Willow park?
                    </h2>
                    <p style="clear: both">
                        There are many benefits to receiving a dental bridge as a restorative treatment. Some include:
                    <ul style="clear:both">

                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Helping your ability to chew
                        </li>
                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Restoring your smile
                        </li>
                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Keeping your remaining teeth in position
                        </li>
                    </ul>
                    </p>
                    </br>
                    <h2 style="clear: both">
                        How is the Recovery Process?
                    </h2>
                    <p>
                        The recovery process for dental bridges is smooth and fast. Unlike other surgical procedures, you are able to go about your everyday activities within a day or so!
                    </p>
                    <p>
                        Some side effects patients experience include soreness and tenderness in the mouth. This is a result of the dentist grinding down your teeth. Tenderness and bleeding of the gums is also another side effect that people experience after the procedure. Within a few days, the soreness will go away but the gums may require a few weeks to heal completely.
                    </p>
                    <p>
                        If you choose to be sedated, you should avoid driving right after the procedure. In order to ensure your dental bridges remain in good shape:
                    <ul style="clear:both">

                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Visit your dentist near you twice a year for a check-up
                        </li>
                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Be educated on what foods to avoid
                        </li>
                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Practice good oral hygiene
                        </li>
                    </ul>

                    </p>
                    <p style="clear: both">
                        If you are looking for a long-lasting solution for missing teeth, call to schedule a consultation today to learn if you are a good candidate for this procedure! At Nexa Dental, we are always happy to offer high-quality dental bridges in Willow park!
                    </p>

                </div>

            </div>


            <div class="tab">
                <h4>
                    Dentures Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="dny_arrow" onclick="expand('dny')"> △ </div>
                <div class="subTab" id="dny" >
                    <img class="serviceImg" src="services/dny.jpg">

                    <p>
                        Missing one or more teeth is very common for most people in North America. Losing a tooth can leave a big impact on your everyday life. Not only can it affect your appearance, but it can also cause difficulty in performing simple tasks like chewing or speaking. If you are considering getting a tooth replaced, receiving dentures in Willow park may be right for you!
                    </p>
                    <h2>
                        What are the Benefits of Receiving Dentures?
                    </h2>
                    <p>
                        Dentures are made up of artificial teeth and gums. These artificial replacements are customized to fit your mouth and restore the functions of healthy teeth. It is important to note that dentures are not as strong as a natural tooth however, they restore functions like chewing, eating, and speaking. We offer high-quality dentures near you at Nexa Dental, allowing you to be comfortable and confident in your smile!
                    </p>

                    <p>
                        Dentures look natural and fit comfortably into your mouth. Not only will you restore the functionality and appearance of your smile, but it will also improve your confidence and oral health. If you have any questions about receiving dentures near you, please contact us!
                    </p>
                </div>
            </div>  
            <div class="tab">
                <h4>
                    Braces Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="bny_arrow" onclick="expand('bny')"> △ </div>
                <div class="subTab" id="bny" >
                    <img class="serviceImg" src="services/bny.jpg">

                    <p>
                        When it comes to improving your smile, we provide you with the best solution to achieve your smile goals and needs. Nexa Dental offers braces near you at our dentist in Willow park. If you are a child, teenager, or adult that is looking to have a straighter smile we are more than happy to help!
                    </p>
                    <h2>
                        Looking to Receive Braces in Willow park?
                    </h2>
                    <p>
                        During a braces consultation, our team of dental experts will provide a treatment plan which includes information on oral hygiene and certain foods to avoid while you have braces.
                    </p>

                    <p>
                        Improving the health and appearance of your smile can help prevent many dental problems later on in life. We offer braces in Willow park that are made of high-quality materials that help strengthen your teeth. In order to understand your orthodontic concerns, our team uses state of the art technology to provide the best treatment plan for you. At Nexa Dental, we provide high-quality braces in Willow park that are comfortable, efficient, and help you reach your smile goals! To learn more about braces near you, call us today to book a consultation.
                    </p>
                    <p>
                        We are happy to provide braces near you to help you achieve your dream smile.
                    </p>
                </div>
            </div>

            <div class="tab">
                <h4>
                    Root Canal Therapy Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="rctny_arrow" onclick="expand('rctny')"> △ </div>
                <div class="subTab" id="rctny" >
                    <img class="serviceImg" src="services/rctny.jpg">

                    <p>
                        Our teeth are composed of several layers. The enamel is the outer layer that surrounds the dentin. Layers of hard tissue are inside the dentin and make up the root canal system. The root canal system contains soft pulp with nerves and blood vessels. The nutrients our teeth need are provided by this strand of pulp which contains nerves extending from the tooth, down into the root. The root of the tooth begins to die if the tissue becomes infected or injured. If proper treatment is not received in time, the whole tooth can end up dying as well. Root canal therapy is used to prevent a damaged tooth from dying.
                    </p>
                    <h2>
                        The Process of Undergoing Root Canal Therapy Near You
                    </h2>
                    <p>
                        Our number one priority at Nexa Dental is to provide you with the best treatments and make you feel as comfortable as possible. When you come into our clinic for root canal treatment near you, our dentist will make sure you are numbed thoroughly before starting your treatment. Next, our dentist will make a small hole in your tooth in order to reach the root canal. This hole will allow our dentist to remove the pulp and clean the inside of the tooth before sealing and filling it back up. Please contact us if you have any questions about receiving root canal therapy near you.
                    </p>

                </div>
            </div>
            <div class="tab">
                <h4>
                    Teeth Whitening Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="twny_arrow" onclick="expand('twny')"> △ </div>
                <div class="subTab" id="twny" >
                    <img class="serviceImg" src="images/teethwhitening.jpg">

                    <p>
                        Your smile is powerful and can say a lot about you. If you aren’t feeling confident in your smile, we may have a solution for you! Whitening your smile can have a positive impact on your self-esteem and also enhance the look of your smile. Enjoy a brighter smile with teeth whitening in Willow Park.
                    </p>

                    <h2>
                        Professional Teeth Whitening Vs Take-Home Teeth Whitening
                    </h2>
                    <p>
                        There are many teeth whitening products out there that you can do yourself at home. Although these products may seem convenient, the best thing you can do to achieve a whiter smile is to receive professional teeth whitening. We offer teeth whitening near you that is safe, long-lasting, and more effective than an over the counter product. If you have any questions regarding teeth whitening in 10601 Southport Rd SW #310, Calgary, AB, T2W 3M6, contact our dental team today!
                    </p>
                    <h2>
                        How to Maintain Your Results
                    </h2>
                    <p>
                        Taking good care of your teeth after they have been whitened is important to maintain your pearly whites. In order to preserve the colour, avoid substances that may cause stains on your teeth like soft drinks, coffee, red wine, and acidic beverages. If you frequently consume any of these, you may see the colour wear faster. Luckily, your teeth will be more resistant to stains if you professionally whiten your teeth as opposed to whitening them with over the counter solutions. Call us to request a teeth whitening consultation today! At Nexa Dental, we provide quality teeth whitening near you.
                    </p>

                </div>
            </div>
            <div class="tab">
                <h4>
                    Porcelain Veneers Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="rvny_arrow" onclick="expand('rvny')"> △ </div>
                <div class="subTab" id="rvny" >
                    <img class="serviceImg" src="services/pvny.jpg">

                    <p>
                        Your smile is unique and special, why not be confident with it! At Nexa Dental, we offer porcelain veneers that can fix cosmetic concerns you have about your teeth. Veneers are thin porcelain shells that are bonded to the front surface of your teeth to enhance your smile. With porcelain veneers, you can achieve the smile you’ve always dreamed of! If you are looking to enhance your smile or correct various dental issues, you may want to consider getting porcelain veneers near you!
                    </p>
                    <h2>
                        What is the Process of Receiving Porcelain Veneers in Willow Park?
                    </h2>   

                    <p>
                        Once your dentist has confirmed if you are a good candidate for porcelain veneers, your dentist will create a treatment plan based on your smile concerns and goals.
                    </p>
                    <p>
                        Your dentist will lightly etch the surface of your teeth in order to create a sufficient surface for the veneers to bond to. This process is usually done without an anesthetic however, you can speak to your dentist about anesthetic options if you feel more comfortable having an anesthetic administered. Your dentist will then take an impression of your teeth which will be sent to a laboratory for the fabrication of your custom veneers. The fabricating process can take up to two weeks,
                    </p>
                    <p>
                        Once the veneers are ready, your Willow Park dentist will carefully adhere each veneer to its assigned tooth. The last step is to buff and polish the veneers to fit over your natural teeth. If you are looking to have a smile transformation, contact us to schedule a consultation! We offer the best veneers in Willow park at Nexa Dental!

                    </p>

                </div>
            </div>

            <div class="tab">
                <h4>
                    Tooth Extraction Near You
                </h4>
                <div class="align_right_img" style="width: 15%" id="teny_arrow" onclick="expand('teny')"> △ </div>
                <div class="subTab" id="teny" >
                    <img class="serviceImg" src="services/teny.jpg">

                    <p>
                        At Nexa Dental, our main goal is to provide you with exceptional services that you can trust. While coming in for regular checkups and cleanings can help detect and prevent dental issues, other problems may be inevitable for some of us. Although we try our best to restore a damaged tooth, sometimes the best and only option is tooth extraction. If you suspect the need to have a tooth extraction in Willow park, call us to book a consultation. We strive to make you feel safe and comfortable whenever you walk into our dental office.
                    </p>
                    <h2>
                        When Should You Schedule a Check-Up?
                    </h2>
                    <p>
                        These are some warning signs to look out for after you come out of surgery:
                    <ul style="clear:both">

                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Swollen or inflamed gums
                        </li>
                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Change in the appearance of teeth
                        </li>
                        <li style="clear: both">
                            &nbsp&nbsp&nbsp&nbsp  Pain when biting
                        </li>
                    </ul>
                    </br>
                    <p style="clear: both">
                        </br>
                        If you experience any of the following, feel free to call us to schedule a follow-up <a id="link" href=<%= request.getAttribute("login-email") == null ? "patient.jsp" :("HomeController?path=appointment&email="+request.getAttribute("login-email") ) %>>appointment</a>.
                    </p>
                    <p>
                        At Nexa Dental, we aim to preserve and restore as much of your natural teeth as possible. We will try to preserve your teeth by all means. However, when tooth extractions are needed, we are experienced and ready to provide you with the best care. Call us today to book a consultation and learn more about tooth extraction in Willow park!
                    </p>
                </p>
                </div>
            </div>

        </main>

        <footer>
            <%@include file="Includes/footer.jsp" %>
        </footer>

    </body>

</html>
