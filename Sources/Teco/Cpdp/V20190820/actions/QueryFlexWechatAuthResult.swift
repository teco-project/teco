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
    /// QueryFlexWechatAuthResult请求参数结构体
    public struct QueryFlexWechatAuthResultRequest: TCRequest {
        /// 商户核身单号
        public let authNo: String

        /// 环境类型
        /// test 测试
        /// release 生产
        /// sandbox 沙箱
        public let environment: String?

        public init(authNo: String, environment: String? = nil) {
            self.authNo = authNo
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case authNo = "AuthNo"
            case environment = "Environment"
        }
    }

    /// QueryFlexWechatAuthResult返回参数结构体
    public struct QueryFlexWechatAuthResultResponse: TCResponse {
        /// 错误码。SUCCESS为成功，其他为失败
        public let errCode: String

        /// 错误消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryWechatAuthResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云V2-查询微工卡核身结果
    ///
    /// 查询微工卡核身结果
    @inlinable
    public func queryFlexWechatAuthResult(_ input: QueryFlexWechatAuthResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexWechatAuthResultResponse> {
        self.client.execute(action: "QueryFlexWechatAuthResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询微工卡核身结果
    ///
    /// 查询微工卡核身结果
    @inlinable
    public func queryFlexWechatAuthResult(_ input: QueryFlexWechatAuthResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexWechatAuthResultResponse {
        try await self.client.execute(action: "QueryFlexWechatAuthResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云V2-查询微工卡核身结果
    ///
    /// 查询微工卡核身结果
    @inlinable
    public func queryFlexWechatAuthResult(authNo: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryFlexWechatAuthResultResponse> {
        self.queryFlexWechatAuthResult(.init(authNo: authNo, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云V2-查询微工卡核身结果
    ///
    /// 查询微工卡核身结果
    @inlinable
    public func queryFlexWechatAuthResult(authNo: String, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryFlexWechatAuthResultResponse {
        try await self.queryFlexWechatAuthResult(.init(authNo: authNo, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
