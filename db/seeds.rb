# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Customer.create(code: "AEM-01", email: "aeomexico01@amexico.com", fullName: "Aerovías de México S.A. de C.V.", phoneNumber: "5534431221", address: "Paseo de
 la Reforma No. 243, Piso 26, Colonia Cuauhtémoc, Alcaldía Cuauhtémoc, C.P.")

Contact.create(code: "C001", fullName: "Eli Granados Lopez", email: "egranadoslopez@amexico.com", phoneNumber: "5533458977 e233", customer_id: Customer.last.id)

Quotation.create(code: "20220126_AEROMEXICO_AF-163-20ST_PACM", quotationDate: Date.today, deliveryTerm: "DDP (Mexican Territory)", minimumOrder: "See Refere
nce below", leadTime: "See reference below", customer_id: am.id, consultant_id: Consultant.last.id, expirationDays: 30, creditDays: 30, contact_id: Contact.last.id)

QuotationDetail.create(quotation_id: Quotation.last.id, good_id: Good.last.id, quantity: 2, leadTime: '110-130',
                       sellingUnit: 'KIT', price: 2715.72, discount: 0)