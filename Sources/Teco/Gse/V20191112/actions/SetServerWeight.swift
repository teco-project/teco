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

extension Gse {
    /// SetServerWeight请求参数结构体
    public struct SetServerWeightRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String

        /// 实例ID
        public let instanceId: String

        /// 权重，最小值0，最大值10，默认值5
        public let weight: Int64

        public init(fleetId: String, instanceId: String, weight: Int64) {
            self.fleetId = fleetId
            self.instanceId = instanceId
            self.weight = weight
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case instanceId = "InstanceId"
            case weight = "Weight"
        }
    }

    /// SetServerWeight返回参数结构体
    public struct SetServerWeightResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置服务器权重
    ///
    /// 本接口（SetServerWeight）用于设置服务器权重。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerWeight(_ input: SetServerWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetServerWeightResponse> {
        fatalError("SetServerWeight is no longer available.")
    }

    /// 设置服务器权重
    ///
    /// 本接口（SetServerWeight）用于设置服务器权重。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerWeight(_ input: SetServerWeightRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetServerWeightResponse {
        fatalError("SetServerWeight is no longer available.")
    }

    /// 设置服务器权重
    ///
    /// 本接口（SetServerWeight）用于设置服务器权重。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerWeight(fleetId: String, instanceId: String, weight: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetServerWeightResponse> {
        fatalError("SetServerWeight is no longer available.")
    }

    /// 设置服务器权重
    ///
    /// 本接口（SetServerWeight）用于设置服务器权重。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerWeight(fleetId: String, instanceId: String, weight: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetServerWeightResponse {
        fatalError("SetServerWeight is no longer available.")
    }
}
