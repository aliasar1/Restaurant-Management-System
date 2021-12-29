calc MACRO v1     
    mov bl,v1
    
    lea dx, quantityPrompt
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    and al, 0Fh
    mul bl
    
    AAM
    
    mov cx, ax
    add cl, 30h
    add ch, 30h 
    
    lea dx, price
    mov ah,9
    int 21h    
    
    mov dl,ch
    mov ah,2
    int 21h 
    
    mov dl,cl
    mov ah,2
    int 21h 
    
    mov dl,'0'
    mov ah,2
    int 21h
    
    mov dl,'/'
    mov ah,2
    int 21h
    mov dl,'='
    mov ah,2
    int 21h 
    
    lea dx, backMainMenu
    mov ah,9
    int 21h
    
    lea dx, exitPrompt
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    cmp al, '1'
    je Main1
    
    jmp exit   
    
endm 
  

.model small
.stack 100h
.data

welcome         db 10,13,'--------Welcome to ABHHM--------',10,13,10,13 


mainMenu        db 10,13,'        MAIN',10,13
                db 'Press 1 for Breakfast',10,13
                db 'Press 2 for Lunch',10,13
                db 'Press 3 for Dinner',10,13
                db 'Press 0 to Exit',10,13,'$'


;           MENU
; welcome message and options               
menuMenu        db 10,13,'        MENU',10,13
                db 'Press 1 for Starters',10,13
                db 'Press 2 for Main Course',10,13
                db 'Press 3 for Desert',10,13
                db 'Press 4 to Return to Main Menu',10,13,'$'

; Update Menu
updateMenu      db 10,13,'        UPDATE MENU',10,13
                db 'Press 1 for Add to Menu',10,13
                db 'Press 2 for Delete from Menu',10,13
                db 'Press 3 to Return to Main Menu',10,13,'$'   

;BreakFast MENU
BreakFastStarterMenu db 10,13,'        STARTER MENU',10,13
                db 'Press 1 for Latte                       Rs 80',10,13
                db 'Press 2 for Espresso                    Rs 90',10,13
                db 'Press 3 for Tea                         Rs 20',10,13
                db 'Press 4 for Tea Karak                   Rs 30',10,13 
                db 'Press 5 for Green Tea                   Rs 20',10,13
                db 'Press 6 for Orange Juice                Rs 50',10,13
                db 'Press 0 to go back',10,13,'$'

BreakFastMainCourseMenu db 10,13,'      MAIN COURSE MENU',10,13
                db 'Press 1 for Omelette Meal               Rs 80',10,13
                db 'Press 2 for Egg Muffin Meal             Rs 60',10,13
                db 'Press 3 for Hot Cakes                   Rs 40',10,13
                db 'Press 4 for Halwa Puri                  Rs 20',10,13  
                db 'Press 5 for Alu Paratha.                Rs 20',10,13
                db 'Press 6 for Egg & Hashbrown Wrap.       Rs 80',10,13
                db 'Press 7 for Qeema paratha               Rs 30',10,13
                db 'Press 8 for Chicken Karahi              Rs 80',10,13
                db 'Press 0 to go back',10,13,'$'

BreakFastDessertMenu  db 10,13,'         DESSERT MENU',10,13
                db 'Press 1 for Double Chocolate Pie.       Rs 80',10,13
                db 'Press 2 for Apple Pie.                  Rs 40',10,13
                db 'Press 3 for Nutella Brownie.            Rs 60',10,13
                db 'Press 4 for Chocolate Cake.             Rs 60',10,13
                db 'Press 5 for Cheese Cake.                Rs 80',10,13
                db 'Press 6 for Mocktails.                  Rs 60',10,13,
                db 'Press 0 to go back',10,13,'$'

;LUNCH MENU
LunchStarterMenu db 10,13,'        STARTER MENU',10,13
                db 'Press 1 for French Fries.               Rs 20',10,13
                db 'Press 2 for Cheesy fries.               Rs 20',10,13
                db 'Press 3 for Samosa Beef.                Rs 20',10,13
                db 'Press 4 for Hummus.                     Rs 20',10,13 
                db 'Press 5 for Spicy Mexican Wings.        Rs 30',10,13
                db 'Press 6 for Chicken Corn Soup.          Rs 20',10,13
                db 'Press 0 to go back',10,13,'$'

LunchMainCourseMenu db 10,13,'      MAIN COURSE MENU',10,13
                db 'Press 1 for Lahori Fish.                Rs 40',10,13
                db 'Press 2 for French Onion Steak.         Rs 40',10,13
                db 'Press 3 for Fajita Steak.               Rs 40',10,13
                db 'Press 4 for Chicken Biryani.            Rs 60',10,13  
                db 'Press 5 for Mutton Pulao.               Rs 60',10,13
                db 'Press 6 for Whole Chicken Roasted.      Rs 80',10,13
                db 'Press 7 for Stuffed Beef Whole          Rs 80',10,13
                db 'Press 8 for Roasted Turkey.             Rs 80',10,13
                db 'Press 0 to go back',10,13,'$'

LunchDessertMenu  db 10,13,'         DESSERT MENU',10,13
                db 'Press 1 for Shahi Tukra.                Rs 20',10,13
                db 'Press 2 for Fudge Brownie.              Rs 20',10,13
                db 'Press 3 for Flavored Icecream.          Rs 20',10,13
                db 'Press 4 for Choclate Moose Cake.        Rs 60',10,13
                db 'Press 5 for Ferrero Roacher Cake.       Rs 80',10,13
                db 'Press 6 for Machiatos.                  Rs 40',10,13,
                db 'Press 0 to go back',10,13,'$'                          



;DINNER MENU
DinnerStarterMenu db 10,13,'        STARTER MENU',10,13
                db 'Press 1 for Bacon rings.                Rs 20',10,13
                db 'Press 2 for Prawn and ginger dumplings. Rs 40',10,13
                db 'Press 3 for Tuna wings.                 Rs 60',10,13
                db 'Press 4 for Sweet french fries          Rs 20',10,13 
                db 'Press 5 for Buffalo Wings               Rs 60',10,13
                db 'Press 6 for Mirchi Pakora               Rs 20',10,13
                db 'Press 0 to go back',10,13,'$'
                
DinnerMainCourseMenu db 10,13,'      MAIN COURSE MENU',10,13
                db 'Press 1 for Peshawari Chapli Kebab.     Rs 60',10,13
                db 'Press 2 for Haleem.                     Rs 60',10,13
                db 'Press 3 for Nalli Nihari.               Rs 80',10,13
                db 'Press 4 for Paya Curry.                 Rs 40',10,13  
                db 'Press 5 for Channa Pindi.               Rs 40',10,13
                db 'Press 6 for Lamb Rogan Josh.            Rs 80',10,13
                db 'Press 7 for Butter chicken              Rs 60',10,13
                db 'Press 8 for Goat Feet.                  Rs 80',10,13
                db 'Press 0 to go back', 10,13,'$'
                
DinnerDessertMenu  db 10,13,'         DESSERT MENU',10,13
                db 'Press 1 for Gulab Jamun.                Rs 20',10,13
                db 'Press 2 for Ice Cream.                  Rs 40',10,13
                db 'Press 3 for Nutella Brownie.            Rs 60',10,13
                db 'Press 4 for Chocolate Cake.             Rs 60',10,13
                db 'Press 5 for Cheese Cake.                Rs 80',10,13
                db 'Press 6 for Mocktails.                  Rs 60',10,13,
                db 'Press 0 to go back', 10,13,'$'

;Quantity
quantityPrompt db 10,13,'Quantity: $'

price db 10,13,'Total Price: $'

backMainMenu db 10,13,10,13,'1.Go Back to Main Menu$'
exitPrompt db 10,13,'0.Exit$'

.code

main proc
    mov ax, @data
    mov ds,ax
    ; DataSegment Init Done!!
    
Main1:
    
    lea dx, welcome
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je Breakfast
    
    cmp bl,'2'
    je LunchMenu
    
    cmp bl,'3'
    je DinnerMenu
    
    cmp bl,'0'
    je Exit
    
    jmp Main1
    
; FIRST LAYER INTO MAIN  

; Bilal
Breakfast:

; Hammad 
LunchMenu:
    
    lea dx, menuMenu 
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je LunchStarter
    
    cmp bl,'2'
    je LunchMain
    
    cmp bl,'3'
    je LunchDesserts
    
    cmp bl,'4'
    je Main1

LunchStarter:   

    lea dx, LunchStarterMenu
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je twenty
    
    cmp bl,'2'
    je twenty
    
    cmp bl,'3'
    je  twenty
    
    cmp bl,'4'
    je  twenty
      
    cmp bl,'5'
    je fourty
    
    cmp bl,'6'
    je  twenty
    
    cmp bl,'0'
    je LunchMenu
    
    jmp LunchStarter 
    
LunchMain:
    lea dx, LunchMainCourseMenu
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je fourty
    
    cmp bl,'2'
    je fourty
    
    cmp bl,'3'
    je fourty
    
    cmp bl,'4'
    je sixty 
      
    cmp bl,'5'
    je sixty
    
    cmp bl,'6'
    je eighty
    
    cmp bl,'7'
    je eighty
    
    cmp bl,'8'
    je eighty 
    
    cmp bl,'0'
    je LunchMenu
    
    jmp DinnerMain 
    
LunchDesserts:
    lea dx, LunchDessertMenu
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je twenty
    
    cmp bl,'2'
    je twenty
    
    cmp bl,'3'
    je twenty
    
    cmp bl,'4'
    je sixty 
    
    cmp bl,'5'
    je eighty
    
    cmp bl,'6'
    je fourty 
    
    cmp bl,'0'
    je LunchMenu
    
    jmp LunchDesserts                              
                  


; Ali Asar
DinnerStarter:   

    lea dx, DinnerStarterMenu
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je twenty
    
    cmp bl,'2'
    je fourty
    
    cmp bl,'3'
    je sixty
    
    cmp bl,'4'
    je twenty 
      
    cmp bl,'5'
    je sixty
    
    cmp bl,'6'
    je twenty 
    
    cmp bl,'0'
    je DinnerMenu
    
    jmp DinnerStarter 
    
DinnerMain:
    lea dx, DinnerMainCourseMenu
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je sixty
    
    cmp bl,'2'
    je sixty
    
    cmp bl,'3'
    je eighty
    
    cmp bl,'4'
    je fourty 
      
    cmp bl,'5'
    je fourty
    
    cmp bl,'6'
    je eighty
    
    cmp bl,'7'
    je sixty
    
    cmp bl,'8'
    je eighty 
    
    cmp bl,'0'
    je DinnerMenu
    
    jmp DinnerMain 
    
DinnerDesserts:
    lea dx, DinnerDessertMenu
    mov ah,9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je twenty
    
    cmp bl,'2'
    je fourty
    
    cmp bl,'3'
    je sixty
    
    cmp bl,'4'
    je sixty 
    
    cmp bl,'5'
    je eighty
    
    cmp bl,'6'
    je sixty 
    
    cmp bl,'0'
    je DinnerMenu
    
    jmp DinnerDesserts        
    

DinnerMenu:
    
    lea dx, menuMenu 
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je DinnerStarter
    
    cmp bl,'2'
    je DinnerMain
    
    cmp bl,'3'
    je DinnerDesserts
    
    cmp bl,'4'
    je Main1
    
    ;jmp Main1


twenty: 
    calc 2
    
fourty:
    calc 4

sixty: 
    calc 6
    
eighty: 
    calc 8
    
Update:

    lea dx, updateMenu 
    mov ah, 9
    int 21h
    
     
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je AddToMenu
    
    cmp bl,'2'
    je DeleteFromMenu
    
    cmp bl,'3'
    je Main1 
    
    ;jmp Main1
    
; SECOND LAYER INTO EACH SUB-MENU

; 1. menu Menu Options

Starters:

MainCourse:

Deserts:



; 5. Update Menu Options

AddToMenu:

DeleteFromMenu:
    


;---------------------------------
    
Exit:
    
    mov ah, 4ch
    int 21h
    
    main endp
end main