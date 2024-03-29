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
    /// QueryFlexPayeeAccountInfo请求参数结构体
    public struct QueryFlexPayeeAccountInfoRequest: TCRequest {
        /// 收款用户ID
        public let payeeId: String?

        /// 外部用户ID
        public let outUserId: String?

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// __test__:测试环境
        /// 缺省默认为生产环境
        public let environment: String?

        public init(payeeId: String? = nil, outUserId: String? = nil, environment: String? = nil) {
            self.payeeId = payeeId
            self.outUserId = outUserId
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case payeeId = "PayeeId"
            case outUserId = "OutUserId"
            case environment = "Environment"
        }
    }

    /// QueryFlexPayeeAccountInfo返回参数结构体
    public struct QueryFlexPayeeAccountInfoResponse: TCResponse {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: PayeeAccountInfoResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-收款用户账户信息查询
    @inlinable
    public func queryFlexPayeeAccountInfo(_ input: QueryFlexPayeeAccountInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexPayeeAccountInfoResponse> {
        self.client.execute(action: "QueryFlexPayeeAccountInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-收款用户账户信息查询
    @inlinable
    public func queryFlexPayeeAccountInfo(_ input: QueryFlexPayeeAccountInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexPayeeAccountInfoResponse {
        try await self.client.execute(action: "QueryFlexPayeeAccountInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-收款用户账户信息查询
    @inlinable
    public func queryFlexPayeeAccountInfo(payeeId: String? = nil, outUserId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexPayeeAccountInfoResponse> {
        self.queryFlexPayeeAccountInfo(.init(payeeId: payeeId, outUserId: outUserId, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-收款用户账户信息查询
    @inlinable
    public func queryFlexPayeeAccountInfo(payeeId: String? = nil, outUserId: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexPayeeAccountInfoResponse {
        try await self.queryFlexPayeeAccountInfo(.init(payeeId: payeeId, outUserId: outUserId, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
