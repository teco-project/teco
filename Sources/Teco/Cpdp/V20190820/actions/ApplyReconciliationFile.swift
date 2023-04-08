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

extension Cpdp {
    /// ApplyReconciliationFile请求参数结构体
    public struct ApplyReconciliationFileRequest: TCRequestModel {
        /// 申请的文件类型。
        /// __CZ__：充值文件
        /// __TX__：提现文件
        /// __JY__：交易文件
        /// __YE__：余额文件
        public let applyFileType: String

        /// 申请的对账文件日期，格式：yyyyMMdd。
        public let applyFileDate: String

        /// 父账户账号。
        /// _平安渠道为资金汇总账号_
        public let bankAccountNumber: String

        /// 环境名。
        /// __release__: 现网环境
        /// __sandbox__: 沙箱环境
        /// __development__: 开发环境
        /// _缺省: release_
        public let midasEnvironment: String?

        public init(applyFileType: String, applyFileDate: String, bankAccountNumber: String, midasEnvironment: String? = nil) {
            self.applyFileType = applyFileType
            self.applyFileDate = applyFileDate
            self.bankAccountNumber = bankAccountNumber
            self.midasEnvironment = midasEnvironment
        }

        enum CodingKeys: String, CodingKey {
            case applyFileType = "ApplyFileType"
            case applyFileDate = "ApplyFileDate"
            case bankAccountNumber = "BankAccountNumber"
            case midasEnvironment = "MidasEnvironment"
        }
    }

    /// ApplyReconciliationFile返回参数结构体
    public struct ApplyReconciliationFileResponse: TCResponseModel {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApplyReconciliationFileResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-申请对账文件
    @inlinable
    public func applyReconciliationFile(_ input: ApplyReconciliationFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyReconciliationFileResponse> {
        self.client.execute(action: "ApplyReconciliationFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-申请对账文件
    @inlinable
    public func applyReconciliationFile(_ input: ApplyReconciliationFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyReconciliationFileResponse {
        try await self.client.execute(action: "ApplyReconciliationFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-申请对账文件
    @inlinable
    public func applyReconciliationFile(applyFileType: String, applyFileDate: String, bankAccountNumber: String, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ApplyReconciliationFileResponse> {
        self.applyReconciliationFile(.init(applyFileType: applyFileType, applyFileDate: applyFileDate, bankAccountNumber: bankAccountNumber, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-申请对账文件
    @inlinable
    public func applyReconciliationFile(applyFileType: String, applyFileDate: String, bankAccountNumber: String, midasEnvironment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyReconciliationFileResponse {
        try await self.applyReconciliationFile(.init(applyFileType: applyFileType, applyFileDate: applyFileDate, bankAccountNumber: bankAccountNumber, midasEnvironment: midasEnvironment), region: region, logger: logger, on: eventLoop)
    }
}
