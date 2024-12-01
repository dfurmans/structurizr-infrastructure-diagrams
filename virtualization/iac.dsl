workspace  { 

    model {
    
        infrastructura = softwareSystem "Infrastructura Física"

        infra = softwareSystem "Entorno Virtualizado" {
            container "Virtuazación 1"
            container "Virtuazación 2"
            container "Virtuazación..."

            !elements "element.parent==infra" {
                this -> infrastructura "IaC"
            }
        }
    }   
    
    views {
        container infra "Containers" {
            include *
            autolayout
        }
        
        styles {

            element "Software System" {
                background green
                shape cylinder
            }

        }
        
        
    }
}
