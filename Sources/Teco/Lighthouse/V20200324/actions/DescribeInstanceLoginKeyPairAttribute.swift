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

extension Lighthouse {
    /// DescribeInstanceLoginKeyPairAttribute请求参数结构体
    public struct DescribeInstanceLoginKeyPairAttributeRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceLoginKeyPairAttribute返回参数结构体
    public struct DescribeInstanceLoginKeyPairAttributeResponse: TCResponseModel {
        /// 是否允许使用默认密钥对登录，YES：允许登录 NO：禁止登录。
        public let permitLogin: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case permitLogin = "PermitLogin"
            case requestId = "RequestId"
        }
    }

    /// 查询实例默认登录密钥属性
    ///
    /// 本接口用于查询实例默认登录密钥属性。
    @inlinable
    public func describeInstanceLoginKeyPairAttribute(_ input: DescribeInstanceLoginKeyPairAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLoginKeyPairAttributeResponse> {
        self.client.execute(action: "DescribeInstanceLoginKeyPairAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例默认登录密钥属性
    ///
    /// 本接口用于查询实例默认登录密钥属性。
    @inlinable
    public func describeInstanceLoginKeyPairAttribute(_ input: DescribeInstanceLoginKeyPairAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLoginKeyPairAttributeResponse {
        try await self.client.execute(action: "DescribeInstanceLoginKeyPairAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例默认登录密钥属性
    ///
    /// 本接口用于查询实例默认登录密钥属性。
    @inlinable
    public func describeInstanceLoginKeyPairAttribute(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLoginKeyPairAttributeResponse> {
        self.describeInstanceLoginKeyPairAttribute(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例默认登录密钥属性
    ///
    /// 本接口用于查询实例默认登录密钥属性。
    @inlinable
    public func describeInstanceLoginKeyPairAttribute(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLoginKeyPairAttributeResponse {
        try await self.describeInstanceLoginKeyPairAttribute(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
