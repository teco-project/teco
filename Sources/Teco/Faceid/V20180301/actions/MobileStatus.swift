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

extension Faceid {
    /// MobileStatus请求参数结构体
    public struct MobileStatusRequest: TCRequestModel {
        /// 手机号码
        public let mobile: String

        /// 敏感数据加密信息。对传入信息（手机号）有加密需求的用户可使用此参数，详情请点击左侧链接。
        public let encryption: Encryption?

        public init(mobile: String, encryption: Encryption? = nil) {
            self.mobile = mobile
            self.encryption = encryption
        }

        enum CodingKeys: String, CodingKey {
            case mobile = "Mobile"
            case encryption = "Encryption"
        }
    }

    /// MobileStatus返回参数结构体
    public struct MobileStatusResponse: TCResponseModel {
        /// 认证结果码，收费情况如下。
        /// 收费结果码：
        /// 0：成功
        /// 不收费结果码：
        /// -1：未查询到结果
        /// -2：手机号格式不正确
        /// -3：验证中心服务繁忙
        public let result: String

        /// 业务结果描述。
        public let description: String

        /// 状态码：
        /// 0：正常
        /// 1：停机
        /// 2：销号
        /// 3：空号
        /// 4：不在网
        /// 99：未知状态
        public let statusCode: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case description = "Description"
            case statusCode = "StatusCode"
            case requestId = "RequestId"
        }
    }

    /// 手机号状态查询
    ///
    /// 本接口用于验证手机号的状态，您可以输入手机号进行查询。
    @inlinable
    public func mobileStatus(_ input: MobileStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MobileStatusResponse> {
        self.client.execute(action: "MobileStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 手机号状态查询
    ///
    /// 本接口用于验证手机号的状态，您可以输入手机号进行查询。
    @inlinable
    public func mobileStatus(_ input: MobileStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MobileStatusResponse {
        try await self.client.execute(action: "MobileStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 手机号状态查询
    ///
    /// 本接口用于验证手机号的状态，您可以输入手机号进行查询。
    @inlinable
    public func mobileStatus(mobile: String, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<MobileStatusResponse> {
        let input = MobileStatusRequest(mobile: mobile, encryption: encryption)
        return self.client.execute(action: "MobileStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 手机号状态查询
    ///
    /// 本接口用于验证手机号的状态，您可以输入手机号进行查询。
    @inlinable
    public func mobileStatus(mobile: String, encryption: Encryption? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> MobileStatusResponse {
        let input = MobileStatusRequest(mobile: mobile, encryption: encryption)
        return try await self.client.execute(action: "MobileStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
