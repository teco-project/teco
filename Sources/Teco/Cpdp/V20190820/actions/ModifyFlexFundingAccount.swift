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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// ModifyFlexFundingAccount请求参数结构体
    public struct ModifyFlexFundingAccountRequest: TCRequest {
        /// 收款用户ID
        public let payeeId: String

        /// 收款用户资金账户ID
        public let fundingAccountBindSerialNo: String

        /// 资金账户类型
        /// PINGAN_BANK:平安银行
        public let fundingAccountType: String

        /// 收款资金账户手机号
        public let phoneNo: String

        /// 收款资金账户姓名
        public let fundingAccountName: String

        /// 收款资金账户号
        public let fundingAccountNo: String

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        /// 开户支行名
        public let bankBranchName: String?

        public init(payeeId: String, fundingAccountBindSerialNo: String, fundingAccountType: String, phoneNo: String, fundingAccountName: String, fundingAccountNo: String, environment: String? = nil, bankBranchName: String? = nil) {
            self.payeeId = payeeId
            self.fundingAccountBindSerialNo = fundingAccountBindSerialNo
            self.fundingAccountType = fundingAccountType
            self.phoneNo = phoneNo
            self.fundingAccountName = fundingAccountName
            self.fundingAccountNo = fundingAccountNo
            self.environment = environment
            self.bankBranchName = bankBranchName
        }

        enum CodingKeys: String, CodingKey {
            case payeeId = "PayeeId"
            case fundingAccountBindSerialNo = "FundingAccountBindSerialNo"
            case fundingAccountType = "FundingAccountType"
            case phoneNo = "PhoneNo"
            case fundingAccountName = "FundingAccountName"
            case fundingAccountNo = "FundingAccountNo"
            case environment = "Environment"
            case bankBranchName = "BankBranchName"
        }
    }

    /// ModifyFlexFundingAccount返回参数结构体
    public struct ModifyFlexFundingAccountResponse: TCResponse {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-修改收款用户资金账号信息
    @inlinable
    public func modifyFlexFundingAccount(_ input: ModifyFlexFundingAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFlexFundingAccountResponse> {
        self.client.execute(action: "ModifyFlexFundingAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-修改收款用户资金账号信息
    @inlinable
    public func modifyFlexFundingAccount(_ input: ModifyFlexFundingAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFlexFundingAccountResponse {
        try await self.client.execute(action: "ModifyFlexFundingAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-修改收款用户资金账号信息
    @inlinable
    public func modifyFlexFundingAccount(payeeId: String, fundingAccountBindSerialNo: String, fundingAccountType: String, phoneNo: String, fundingAccountName: String, fundingAccountNo: String, environment: String? = nil, bankBranchName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFlexFundingAccountResponse> {
        self.modifyFlexFundingAccount(.init(payeeId: payeeId, fundingAccountBindSerialNo: fundingAccountBindSerialNo, fundingAccountType: fundingAccountType, phoneNo: phoneNo, fundingAccountName: fundingAccountName, fundingAccountNo: fundingAccountNo, environment: environment, bankBranchName: bankBranchName), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-修改收款用户资金账号信息
    @inlinable
    public func modifyFlexFundingAccount(payeeId: String, fundingAccountBindSerialNo: String, fundingAccountType: String, phoneNo: String, fundingAccountName: String, fundingAccountNo: String, environment: String? = nil, bankBranchName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFlexFundingAccountResponse {
        try await self.modifyFlexFundingAccount(.init(payeeId: payeeId, fundingAccountBindSerialNo: fundingAccountBindSerialNo, fundingAccountType: fundingAccountType, phoneNo: phoneNo, fundingAccountName: fundingAccountName, fundingAccountNo: fundingAccountNo, environment: environment, bankBranchName: bankBranchName), region: region, logger: logger, on: eventLoop)
    }
}
