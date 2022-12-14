//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Faceid {
    /// GetRealNameAuthResult请求参数结构体
    public struct GetRealNameAuthResultRequest: TCRequestModel {
        /// 实名认证凭证
        public let authToken: String

        public init(authToken: String) {
            self.authToken = authToken
        }

        enum CodingKeys: String, CodingKey {
            case authToken = "AuthToken"
        }
    }

    /// GetRealNameAuthResult返回参数结构体
    public struct GetRealNameAuthResultResponse: TCResponseModel {
        /// 认证结果码，收费情况如下：
        /// 收费码：
        /// 0:  姓名和身份证号一致
        /// -1: 姓名和身份证号不一致
        /// -2: 姓名和微信实名姓名不一致
        /// 不收费码：
        /// -3: 微信号未实名
        public let resultType: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultType = "ResultType"
            case requestId = "RequestId"
        }
    }

    /// 获取微信实名认证结果
    @inlinable
    public func getRealNameAuthResult(_ input: GetRealNameAuthResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetRealNameAuthResultResponse > {
        self.client.execute(action: "GetRealNameAuthResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取微信实名认证结果
    @inlinable
    public func getRealNameAuthResult(_ input: GetRealNameAuthResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRealNameAuthResultResponse {
        try await self.client.execute(action: "GetRealNameAuthResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取微信实名认证结果
    @inlinable
    public func getRealNameAuthResult(authToken: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetRealNameAuthResultResponse > {
        self.getRealNameAuthResult(GetRealNameAuthResultRequest(authToken: authToken), logger: logger, on: eventLoop)
    }

    /// 获取微信实名认证结果
    @inlinable
    public func getRealNameAuthResult(authToken: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetRealNameAuthResultResponse {
        try await self.getRealNameAuthResult(GetRealNameAuthResultRequest(authToken: authToken), logger: logger, on: eventLoop)
    }
}
