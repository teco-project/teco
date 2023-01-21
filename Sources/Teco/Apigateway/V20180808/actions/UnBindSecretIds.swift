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

extension Apigateway {
    /// UnBindSecretIds请求参数结构体
    public struct UnBindSecretIdsRequest: TCRequestModel {
        /// 待解绑的使用计划唯一 ID。
        public let usagePlanId: String

        /// 待解绑的密钥 ID 数组。
        public let accessKeyIds: [String]

        public init(usagePlanId: String, accessKeyIds: [String]) {
            self.usagePlanId = usagePlanId
            self.accessKeyIds = accessKeyIds
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
            case accessKeyIds = "AccessKeyIds"
        }
    }

    /// UnBindSecretIds返回参数结构体
    public struct UnBindSecretIdsResponse: TCResponseModel {
        /// 解绑操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 使用计划解绑密钥
    ///
    /// 本接口（UnBindSecretIds）用于为使用计划解绑密钥。
    @inlinable
    public func unBindSecretIds(_ input: UnBindSecretIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindSecretIdsResponse> {
        self.client.execute(action: "UnBindSecretIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用计划解绑密钥
    ///
    /// 本接口（UnBindSecretIds）用于为使用计划解绑密钥。
    @inlinable
    public func unBindSecretIds(_ input: UnBindSecretIdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindSecretIdsResponse {
        try await self.client.execute(action: "UnBindSecretIds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用计划解绑密钥
    ///
    /// 本接口（UnBindSecretIds）用于为使用计划解绑密钥。
    @inlinable
    public func unBindSecretIds(usagePlanId: String, accessKeyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindSecretIdsResponse> {
        self.unBindSecretIds(UnBindSecretIdsRequest(usagePlanId: usagePlanId, accessKeyIds: accessKeyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 使用计划解绑密钥
    ///
    /// 本接口（UnBindSecretIds）用于为使用计划解绑密钥。
    @inlinable
    public func unBindSecretIds(usagePlanId: String, accessKeyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindSecretIdsResponse {
        try await self.unBindSecretIds(UnBindSecretIdsRequest(usagePlanId: usagePlanId, accessKeyIds: accessKeyIds), region: region, logger: logger, on: eventLoop)
    }
}
