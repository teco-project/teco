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

extension Ecm {
    /// ModifyModuleNetwork请求参数结构体
    public struct ModifyModuleNetworkRequest: TCRequest {
        /// 模块Id
        public let moduleId: String

        /// 默认出带宽上限
        public let defaultBandwidth: Int64

        /// 默认入带宽上限
        public let defaultBandwidthIn: Int64?

        public init(moduleId: String, defaultBandwidth: Int64, defaultBandwidthIn: Int64? = nil) {
            self.moduleId = moduleId
            self.defaultBandwidth = defaultBandwidth
            self.defaultBandwidthIn = defaultBandwidthIn
        }

        enum CodingKeys: String, CodingKey {
            case moduleId = "ModuleId"
            case defaultBandwidth = "DefaultBandwidth"
            case defaultBandwidthIn = "DefaultBandwidthIn"
        }
    }

    /// ModifyModuleNetwork返回参数结构体
    public struct ModifyModuleNetworkResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改模块默认带宽上限
    @inlinable @discardableResult
    public func modifyModuleNetwork(_ input: ModifyModuleNetworkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleNetworkResponse> {
        self.client.execute(action: "ModifyModuleNetwork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改模块默认带宽上限
    @inlinable @discardableResult
    public func modifyModuleNetwork(_ input: ModifyModuleNetworkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleNetworkResponse {
        try await self.client.execute(action: "ModifyModuleNetwork", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改模块默认带宽上限
    @inlinable @discardableResult
    public func modifyModuleNetwork(moduleId: String, defaultBandwidth: Int64, defaultBandwidthIn: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyModuleNetworkResponse> {
        self.modifyModuleNetwork(.init(moduleId: moduleId, defaultBandwidth: defaultBandwidth, defaultBandwidthIn: defaultBandwidthIn), region: region, logger: logger, on: eventLoop)
    }

    /// 修改模块默认带宽上限
    @inlinable @discardableResult
    public func modifyModuleNetwork(moduleId: String, defaultBandwidth: Int64, defaultBandwidthIn: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyModuleNetworkResponse {
        try await self.modifyModuleNetwork(.init(moduleId: moduleId, defaultBandwidth: defaultBandwidth, defaultBandwidthIn: defaultBandwidthIn), region: region, logger: logger, on: eventLoop)
    }
}
