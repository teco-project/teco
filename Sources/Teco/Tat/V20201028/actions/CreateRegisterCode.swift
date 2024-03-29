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

extension Tat {
    /// CreateRegisterCode请求参数结构体
    public struct CreateRegisterCodeRequest: TCRequest {
        /// 注册码描述。
        public let description: String?

        /// 注册实列名称前缀。
        public let instanceNamePrefix: String?

        /// 该注册码允许注册的实列数目。默认限制为10个。
        public let registerLimit: Int64?

        /// 该注册码的有效时间，单位为小时。默认为4小时。
        public let effectiveTime: Int64?

        /// 该注册码限制tat_agent只能从IpAddressRange所描述公网出口进行注册。默认不做限制。
        public let ipAddressRange: String?

        public init(description: String? = nil, instanceNamePrefix: String? = nil, registerLimit: Int64? = nil, effectiveTime: Int64? = nil, ipAddressRange: String? = nil) {
            self.description = description
            self.instanceNamePrefix = instanceNamePrefix
            self.registerLimit = registerLimit
            self.effectiveTime = effectiveTime
            self.ipAddressRange = ipAddressRange
        }

        enum CodingKeys: String, CodingKey {
            case description = "Description"
            case instanceNamePrefix = "InstanceNamePrefix"
            case registerLimit = "RegisterLimit"
            case effectiveTime = "EffectiveTime"
            case ipAddressRange = "IpAddressRange"
        }
    }

    /// CreateRegisterCode返回参数结构体
    public struct CreateRegisterCodeResponse: TCResponse {
        /// 注册码ID。
        public let registerCodeId: String

        /// 注册码值。
        public let registerCodeValue: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registerCodeId = "RegisterCodeId"
            case registerCodeValue = "RegisterCodeValue"
            case requestId = "RequestId"
        }
    }

    /// 创建注册码
    ///
    /// 接口用于创建注册码。
    @inlinable
    public func createRegisterCode(_ input: CreateRegisterCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRegisterCodeResponse> {
        self.client.execute(action: "CreateRegisterCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建注册码
    ///
    /// 接口用于创建注册码。
    @inlinable
    public func createRegisterCode(_ input: CreateRegisterCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRegisterCodeResponse {
        try await self.client.execute(action: "CreateRegisterCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建注册码
    ///
    /// 接口用于创建注册码。
    @inlinable
    public func createRegisterCode(description: String? = nil, instanceNamePrefix: String? = nil, registerLimit: Int64? = nil, effectiveTime: Int64? = nil, ipAddressRange: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRegisterCodeResponse> {
        self.createRegisterCode(.init(description: description, instanceNamePrefix: instanceNamePrefix, registerLimit: registerLimit, effectiveTime: effectiveTime, ipAddressRange: ipAddressRange), region: region, logger: logger, on: eventLoop)
    }

    /// 创建注册码
    ///
    /// 接口用于创建注册码。
    @inlinable
    public func createRegisterCode(description: String? = nil, instanceNamePrefix: String? = nil, registerLimit: Int64? = nil, effectiveTime: Int64? = nil, ipAddressRange: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRegisterCodeResponse {
        try await self.createRegisterCode(.init(description: description, instanceNamePrefix: instanceNamePrefix, registerLimit: registerLimit, effectiveTime: effectiveTime, ipAddressRange: ipAddressRange), region: region, logger: logger, on: eventLoop)
    }
}
