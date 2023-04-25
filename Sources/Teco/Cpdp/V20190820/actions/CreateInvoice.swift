//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// CreateInvoice请求参数结构体
    public struct CreateInvoiceRequest: TCRequestModel {
        /// 开票平台ID。0：高灯，1：票易通
        public let invoicePlatformId: Int64

        /// 抬头类型：1：个人/政府事业单位；2：企业
        public let titleType: Int64

        /// 购方名称
        public let buyerTitle: String

        /// 业务开票号
        public let orderId: String

        /// 含税总金额（单位为分）
        public let amountHasTax: Int64

        /// 总税额（单位为分）
        public let taxAmount: Int64

        /// 不含税总金额（单位为分）。InvoicePlatformId 为1时，传默认值-1
        public let amountWithoutTax: Int64

        /// 销方纳税人识别号
        public let sellerTaxpayerNum: String

        /// 销方名称。（不填默认读取商户注册时输入的信息）
        public let sellerName: String?

        /// 销方地址。（不填默认读取商户注册时输入的信息）
        public let sellerAddress: String?

        /// 销方电话。（不填默认读取商户注册时输入的信息）
        public let sellerPhone: String?

        /// 销方银行名称。（不填默认读取商户注册时输入的信息）
        public let sellerBankName: String?

        /// 销方银行账号。（不填默认读取商户注册时输入的信息）
        public let sellerBankAccount: String?

        /// 购方纳税人识别号（购方票面信息）,若抬头类型为2时，必传
        public let buyerTaxpayerNum: String?

        /// 购方地址。开具专用发票时必填
        public let buyerAddress: String?

        /// 购方银行名称。开具专用发票时必填
        public let buyerBankName: String?

        /// 购方银行账号。开具专用发票时必填
        public let buyerBankAccount: String?

        /// 购方电话。开具专用发票时必填
        public let buyerPhone: String?

        /// 收票人邮箱。若填入，会收到发票推送邮件
        public let buyerEmail: String?

        /// 收票人手机号。若填入，会收到发票推送短信
        public let takerPhone: String?

        /// 开票类型：
        /// 1：增值税专用发票；
        /// 2：增值税普通发票；
        /// 3：增值税电子发票；
        /// 4：增值税卷式发票；
        /// 5：区块链电子发票。
        /// 若该字段不填，或值不为1-5，则认为开具”增值税电子发票”
        public let invoiceType: Int64?

        /// 发票结果回传地址
        public let callbackUrl: String?

        /// 开票人姓名。（不填默认读取商户注册时输入的信息）
        public let drawer: String?

        /// 收款人姓名。（不填默认读取商户注册时输入的信息）
        public let payee: String?

        /// 复核人姓名。（不填默认读取商户注册时输入的信息）
        public let checker: String?

        /// 税盘号
        public let terminalCode: String?

        /// 征收方式。开具差额征税发票时必填2。开具普通征税发票时为空
        public let levyMethod: String?

        /// 差额征税扣除额（单位为分）
        public let deduction: Int64?

        /// 备注（票面信息）
        public let remark: String?

        /// 项目商品明细
        public let items: [CreateInvoiceItem]?

        /// 接入环境。沙箱环境填sandbox。
        public let profile: String?

        /// 撤销部分商品。0-不撤销，1-撤销
        public let undoPart: Int64?

        /// 订单下单时间（格式 YYYYMMDD）
        public let orderDate: String?

        /// 订单级别折扣（单位为分）
        public let discount: Int64?

        /// 门店编码
        public let storeNo: String?

        /// 开票渠道。0：APP渠道，1：线下渠道，2：小程序渠道。不填默认为APP渠道
        public let invoiceChannel: Int64?

        public init(invoicePlatformId: Int64, titleType: Int64, buyerTitle: String, orderId: String, amountHasTax: Int64, taxAmount: Int64, amountWithoutTax: Int64, sellerTaxpayerNum: String, sellerName: String? = nil, sellerAddress: String? = nil, sellerPhone: String? = nil, sellerBankName: String? = nil, sellerBankAccount: String? = nil, buyerTaxpayerNum: String? = nil, buyerAddress: String? = nil, buyerBankName: String? = nil, buyerBankAccount: String? = nil, buyerPhone: String? = nil, buyerEmail: String? = nil, takerPhone: String? = nil, invoiceType: Int64? = nil, callbackUrl: String? = nil, drawer: String? = nil, payee: String? = nil, checker: String? = nil, terminalCode: String? = nil, levyMethod: String? = nil, deduction: Int64? = nil, remark: String? = nil, items: [CreateInvoiceItem]? = nil, profile: String? = nil, undoPart: Int64? = nil, orderDate: String? = nil, discount: Int64? = nil, storeNo: String? = nil, invoiceChannel: Int64? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.titleType = titleType
            self.buyerTitle = buyerTitle
            self.orderId = orderId
            self.amountHasTax = amountHasTax
            self.taxAmount = taxAmount
            self.amountWithoutTax = amountWithoutTax
            self.sellerTaxpayerNum = sellerTaxpayerNum
            self.sellerName = sellerName
            self.sellerAddress = sellerAddress
            self.sellerPhone = sellerPhone
            self.sellerBankName = sellerBankName
            self.sellerBankAccount = sellerBankAccount
            self.buyerTaxpayerNum = buyerTaxpayerNum
            self.buyerAddress = buyerAddress
            self.buyerBankName = buyerBankName
            self.buyerBankAccount = buyerBankAccount
            self.buyerPhone = buyerPhone
            self.buyerEmail = buyerEmail
            self.takerPhone = takerPhone
            self.invoiceType = invoiceType
            self.callbackUrl = callbackUrl
            self.drawer = drawer
            self.payee = payee
            self.checker = checker
            self.terminalCode = terminalCode
            self.levyMethod = levyMethod
            self.deduction = deduction
            self.remark = remark
            self.items = items
            self.profile = profile
            self.undoPart = undoPart
            self.orderDate = orderDate
            self.discount = discount
            self.storeNo = storeNo
            self.invoiceChannel = invoiceChannel
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case titleType = "TitleType"
            case buyerTitle = "BuyerTitle"
            case orderId = "OrderId"
            case amountHasTax = "AmountHasTax"
            case taxAmount = "TaxAmount"
            case amountWithoutTax = "AmountWithoutTax"
            case sellerTaxpayerNum = "SellerTaxpayerNum"
            case sellerName = "SellerName"
            case sellerAddress = "SellerAddress"
            case sellerPhone = "SellerPhone"
            case sellerBankName = "SellerBankName"
            case sellerBankAccount = "SellerBankAccount"
            case buyerTaxpayerNum = "BuyerTaxpayerNum"
            case buyerAddress = "BuyerAddress"
            case buyerBankName = "BuyerBankName"
            case buyerBankAccount = "BuyerBankAccount"
            case buyerPhone = "BuyerPhone"
            case buyerEmail = "BuyerEmail"
            case takerPhone = "TakerPhone"
            case invoiceType = "InvoiceType"
            case callbackUrl = "CallbackUrl"
            case drawer = "Drawer"
            case payee = "Payee"
            case checker = "Checker"
            case terminalCode = "TerminalCode"
            case levyMethod = "LevyMethod"
            case deduction = "Deduction"
            case remark = "Remark"
            case items = "Items"
            case profile = "Profile"
            case undoPart = "UndoPart"
            case orderDate = "OrderDate"
            case discount = "Discount"
            case storeNo = "StoreNo"
            case invoiceChannel = "InvoiceChannel"
        }
    }

    /// CreateInvoice返回参数结构体
    public struct CreateInvoiceResponse: TCResponseModel {
        /// 发票开具结果
        public let result: CreateInvoiceResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 智慧零售-发票开具
    @inlinable
    public func createInvoice(_ input: CreateInvoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInvoiceResponse> {
        self.client.execute(action: "CreateInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票开具
    @inlinable
    public func createInvoice(_ input: CreateInvoiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInvoiceResponse {
        try await self.client.execute(action: "CreateInvoice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-发票开具
    @inlinable
    public func createInvoice(invoicePlatformId: Int64, titleType: Int64, buyerTitle: String, orderId: String, amountHasTax: Int64, taxAmount: Int64, amountWithoutTax: Int64, sellerTaxpayerNum: String, sellerName: String? = nil, sellerAddress: String? = nil, sellerPhone: String? = nil, sellerBankName: String? = nil, sellerBankAccount: String? = nil, buyerTaxpayerNum: String? = nil, buyerAddress: String? = nil, buyerBankName: String? = nil, buyerBankAccount: String? = nil, buyerPhone: String? = nil, buyerEmail: String? = nil, takerPhone: String? = nil, invoiceType: Int64? = nil, callbackUrl: String? = nil, drawer: String? = nil, payee: String? = nil, checker: String? = nil, terminalCode: String? = nil, levyMethod: String? = nil, deduction: Int64? = nil, remark: String? = nil, items: [CreateInvoiceItem]? = nil, profile: String? = nil, undoPart: Int64? = nil, orderDate: String? = nil, discount: Int64? = nil, storeNo: String? = nil, invoiceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInvoiceResponse> {
        self.createInvoice(.init(invoicePlatformId: invoicePlatformId, titleType: titleType, buyerTitle: buyerTitle, orderId: orderId, amountHasTax: amountHasTax, taxAmount: taxAmount, amountWithoutTax: amountWithoutTax, sellerTaxpayerNum: sellerTaxpayerNum, sellerName: sellerName, sellerAddress: sellerAddress, sellerPhone: sellerPhone, sellerBankName: sellerBankName, sellerBankAccount: sellerBankAccount, buyerTaxpayerNum: buyerTaxpayerNum, buyerAddress: buyerAddress, buyerBankName: buyerBankName, buyerBankAccount: buyerBankAccount, buyerPhone: buyerPhone, buyerEmail: buyerEmail, takerPhone: takerPhone, invoiceType: invoiceType, callbackUrl: callbackUrl, drawer: drawer, payee: payee, checker: checker, terminalCode: terminalCode, levyMethod: levyMethod, deduction: deduction, remark: remark, items: items, profile: profile, undoPart: undoPart, orderDate: orderDate, discount: discount, storeNo: storeNo, invoiceChannel: invoiceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-发票开具
    @inlinable
    public func createInvoice(invoicePlatformId: Int64, titleType: Int64, buyerTitle: String, orderId: String, amountHasTax: Int64, taxAmount: Int64, amountWithoutTax: Int64, sellerTaxpayerNum: String, sellerName: String? = nil, sellerAddress: String? = nil, sellerPhone: String? = nil, sellerBankName: String? = nil, sellerBankAccount: String? = nil, buyerTaxpayerNum: String? = nil, buyerAddress: String? = nil, buyerBankName: String? = nil, buyerBankAccount: String? = nil, buyerPhone: String? = nil, buyerEmail: String? = nil, takerPhone: String? = nil, invoiceType: Int64? = nil, callbackUrl: String? = nil, drawer: String? = nil, payee: String? = nil, checker: String? = nil, terminalCode: String? = nil, levyMethod: String? = nil, deduction: Int64? = nil, remark: String? = nil, items: [CreateInvoiceItem]? = nil, profile: String? = nil, undoPart: Int64? = nil, orderDate: String? = nil, discount: Int64? = nil, storeNo: String? = nil, invoiceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInvoiceResponse {
        try await self.createInvoice(.init(invoicePlatformId: invoicePlatformId, titleType: titleType, buyerTitle: buyerTitle, orderId: orderId, amountHasTax: amountHasTax, taxAmount: taxAmount, amountWithoutTax: amountWithoutTax, sellerTaxpayerNum: sellerTaxpayerNum, sellerName: sellerName, sellerAddress: sellerAddress, sellerPhone: sellerPhone, sellerBankName: sellerBankName, sellerBankAccount: sellerBankAccount, buyerTaxpayerNum: buyerTaxpayerNum, buyerAddress: buyerAddress, buyerBankName: buyerBankName, buyerBankAccount: buyerBankAccount, buyerPhone: buyerPhone, buyerEmail: buyerEmail, takerPhone: takerPhone, invoiceType: invoiceType, callbackUrl: callbackUrl, drawer: drawer, payee: payee, checker: checker, terminalCode: terminalCode, levyMethod: levyMethod, deduction: deduction, remark: remark, items: items, profile: profile, undoPart: undoPart, orderDate: orderDate, discount: discount, storeNo: storeNo, invoiceChannel: invoiceChannel), region: region, logger: logger, on: eventLoop)
    }
}
