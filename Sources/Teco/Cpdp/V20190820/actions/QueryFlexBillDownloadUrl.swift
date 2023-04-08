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
    /// QueryFlexBillDownloadUrl请求参数结构体
    public struct QueryFlexBillDownloadUrlRequest: TCRequestModel {
        /// 对账单日期
        public let billDate: String

        /// 对账单类型：FREEZE, SETTLEMENT,PAYMENT
        public let billType: String

        /// 服务商ID，如不填则查询平台级别对账单文件
        public let serviceProviderId: String?

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(billDate: String, billType: String, serviceProviderId: String? = nil, environment: String? = nil) {
            self.billDate = billDate
            self.billType = billType
            self.serviceProviderId = serviceProviderId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case billDate = "BillDate"
            case billType = "BillType"
            case serviceProviderId = "ServiceProviderId"
            case environment = "Environment"
        }
    }

    /// QueryFlexBillDownloadUrl返回参数结构体
    public struct QueryFlexBillDownloadUrlResponse: TCResponseModel {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: FlexBillDownloadUrlResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-查询对账单文件下载链接
    @inlinable
    public func queryFlexBillDownloadUrl(_ input: QueryFlexBillDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexBillDownloadUrlResponse> {
        self.client.execute(action: "QueryFlexBillDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询对账单文件下载链接
    @inlinable
    public func queryFlexBillDownloadUrl(_ input: QueryFlexBillDownloadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexBillDownloadUrlResponse {
        try await self.client.execute(action: "QueryFlexBillDownloadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-查询对账单文件下载链接
    @inlinable
    public func queryFlexBillDownloadUrl(billDate: String, billType: String, serviceProviderId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexBillDownloadUrlResponse> {
        self.queryFlexBillDownloadUrl(.init(billDate: billDate, billType: billType, serviceProviderId: serviceProviderId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询对账单文件下载链接
    @inlinable
    public func queryFlexBillDownloadUrl(billDate: String, billType: String, serviceProviderId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexBillDownloadUrlResponse {
        try await self.queryFlexBillDownloadUrl(.init(billDate: billDate, billType: billType, serviceProviderId: serviceProviderId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
