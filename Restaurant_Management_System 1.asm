.model small
.stack 100h
.data

welcome         db 10,13,'--------Welcome to ABHHM--------',10,13,10,13

mainMenu        db 10,13,'        MAIN',10,13
                db 'Press 1 for Menu',10,13
                db 'Press 2 for Staff',10,13
                db 'Press 3 for Inventory',10,13
                db 'Press 4 for Sales',10,13
                db 'Press 5 to  Update Menu',10,13
                db 'Press 6 to return to Exit',10,13,'$'


;           MENU
; welcome message and options               
menuMenu        db 10,13,'        MENU',10,13
                db 'Press 1 for Starters',10,13
                db 'Press 2 for Main Course',10,13
                db 'Press 3 for Desert',10,13
                db 'Press 4 to return to Main',10,13,'$'

; Staff
staffMenu       db 10,13,'        Staff',10,13
                db 'Press 1 for Current Staff',10,13
                db 'Press 2 for Staff Salary',10,13
                db 'Press 3 for Staf Schedule',10,13
                db 'Press 4 to return to Main',10,13,'$'


; Inventory
inventoryMenu   db 10,13,'        INVENTORY',10,13
                db 'Press 1 for Current Inventory',10,13
                db 'Press 2 for Order Inventory',10,13
                db 'Press 3 for Add New Inventory',10,13
                db 'Press 4 to return to Main',10,13,'$'



; Sales
salesMenu       db 10,13,'        SALES',10,13
                db 'Press 1 for Current Sales',10,13
                db 'Press 2 for Last Months Sales',10,13
                db 'Press 3 for Profit',10,13
                db 'Press 4 to return to Main',10,13,'$'
                 


; Update Menu
updateMenu      db 10,13,'        UPDATE MENU',10,13
                db 'Press 1 for Add to Menu',10,13
                db 'Press 2 for Delete from Menu',10,13
                db 'Press 3 to return to Main',10,13,'$'
                
;****************************************************************************************

;Starter
starterMenu     db 10,13,'        STARTER MENU',10,13
                db 'Press 1 Beef Wellington tart.  Rs 300',10,13
                db 'Press 2 The spicy fish. Rs 320',10,13
                db 'Press 3 Tuna wings. Rs 400',10,13
                db 'Press 4 Sweet fried. Rs 240',10,13
                db 'Press 5 Bacon rings. Rs 380',10,13
                db 'Press 6 Butter chicken pops. Rs 420',10,13
                db 'Press 7 Prawn and ginger dumplings. Rs 340',10,13
                db 'Press 8 Blooming onion. Rs 280',10,13
                db 'Press 0 To return to Menu page',10,13,'$'
                
;Main course 
mainCourseMenu  db 10,13,'         MAIN COURSE MENU',10,13
                db 'Press 1 Peshawari Chapli Kebab. Rs 1700',10,13
                db 'Press 2 Haleem. Rs 1200',10,13
                db 'Press 3 Nalli Nihari. Rs 1600',10,13
                db 'Press 4 Barrah Kebab. Rs 1300',10,13
                db 'Press 5 Paya Curry. Rs 2100',10,13
                db 'Press 6 Channa Pindi. Rs 1100',10,13
                db 'Press 7 Lamb Rogan Josh. Rs 3500',10,13
                db 'Press 8 Beggars Purse. Rs 2800',10,13
                db 'Press 0 To return to Menu page',10,13,'$'
                
;Desert 
desertMenu      db 10,13,'         DESERT MENU',10,13
                db 'Press 1 Gulab Jamun. Rs 200',10,13
                db 'Press 2 Ice Cream. Rs 250',10,13
                db 'Press 3 Nutella Brownie. Rs 200',10,13
                db 'Press 4 Chocolate Cake. Rs 275',10,13
                db 'Press 5 Cheese Cake. Rs 299',10,13
                db 'Press 6 Mocktails. Rs 249',10,13
                db 'Press 7 Milk Shake. Rs 300',10,13
                db 'Press 0 To return to Menu page',10,13,'$'
                                                   

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
    je Menu
    
    cmp bl,'2'
    je Staff
    
    cmp bl,'3'
    je Inventory
    
    cmp bl,'4'
    je Sales
    
    cmp bl,'5'
    je Update
    
    cmp bl,'6'
    je Exit
    
    jmp Menu
    
; FIRST LAYER INTO MAIN    

Menu:
    
    lea dx, menuMenu 
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
    
    cmp bl,'1'
    je Starters
    
    cmp bl,'2'
    je MainCourse
    
    cmp bl,'3'
    je Deserts
    
    cmp bl,'4'
    je Main1
    
    ;jmp Main1
    
    

Staff:

    lea dx, staffMenu
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je CurrentStaff
    
    cmp bl,'2'
    je Salary
    
    cmp bl,'3'
    je Schedule
    
    cmp bl,'4'
    je Main1       
   

Inventory:

    lea dx, inventoryMenu 
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je CurrentInventory
    
    cmp bl,'2'
    je OrderInventory
    
    cmp bl,'3'
    je AddInventory
    
    cmp bl,'4'
    je Main1 

Sales:

    lea dx, salesMenu
    mov ah, 9
    int 21h
    
    mov ah,7
    int 21h
    
    mov bl,al
           
    cmp bl,'1'
    je CurrentSales
    
    cmp bl,'2'
    je LastMonthsSale
    
    cmp bl,'3'
    je Profit
    
    cmp bl,'4'
    je Main1 
    
    ;jmp Main1
    
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
    lea dx, starterMenu
    mov ah,9
    int 21h
    
    ;sti1 = starterItem 1 and so on....
    
    mov ah,7
    int 21h
    
    cmp al, '1'
    je sti1
    
    cmp al, '2'
    je sti2
    
    cmp al, '3'
    je sti3
    
    cmp al, '4'
    je sti4   
    
    cmp al, '5'
    je sti5
    
    cmp al, '6'
    je sti6
    
    cmp al, '7'
    je sti7
    
    cmp al, '8'
    je sti8
    
    cmp al,'0'
    je Menu
    
    jmp Starters


; Here logic and calculation for food should be implemented present in Starter Menu       
sti1:
sti2:
sti3:
sti4:
sti5:
sti6:
sti7:
sti8:    

MainCourse: 
    lea dx, mainCourseMenu
    mov ah,9
    int 21h
    
    ;mc1 = mainCourseItem1
    
    mov ah,7
    int 21h
    
    cmp al,'1'
    je mc1
    
    cmp al,'2'
    je mc2
    
    cmp al,'3'
    je mc3
    
    cmp al,'4'
    je mc4
    
    cmp al,'5'
    je mc5
    
    cmp al,'6'
    je mc6
    
    cmp al,'7'
    je mc7
    
    cmp al,'8'
    je mc8
    
    cmp al,'0'
    je Menu
    
    jmp MainCourse

; Here logic and calculation for food should be implemented present in main course Menu
mc1:
mc2:
mc3:
mc4:
mc5:
mc6:
mc7:
mc8:

Deserts: 
    lea dx, desertMenu
    mov ah,9
    int 21h 
    
    ;d1 = desertItem1
    
    mov ah,7
    int 21h
    
    cmp al,'1'
    je d1
    
    cmp al,'2'
    je d2
    
    cmp al,'3'
    je d3
    
    cmp al,'4'
    je d4
    
    cmp al,'5'
    je d5
    
    cmp al,'6'
    je d6
    
    cmp al,'7'
    je d7
    
    cmp al,'0'
    je Menu
    
    jmp Deserts 

; Here logic and calculation for food should be implemented present in desert Menu
d1:
d2:
d3:
d4:
d5:
d6:
d7:

; 2. Staff Menu Options

CurrentStaff:

Salary:

Schedule:


; 3. Inverntory Menu Options

CurrentInventory:

OrderInventory:

AddInventory:


; 4. Sales Menu Options

CurrentSales:

LastMonthsSale:
    
Profit:


; 5. Update Menu Options

AddToMenu:

DeleteFromMenu:
    


;---------------------------------
    
Exit:
    
    mov ah, 4ch
    int 21h
    
    main endp
end main