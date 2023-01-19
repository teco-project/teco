//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Gse {
    /// DeleteScalingPolicy请求参数结构体
    public struct DeleteScalingPolicyRequest: TCRequestModel {
        /// 服务器舰队ID
        public let fleetId: String

        /// 扩缩容策略名称，最小长度为0，最大长度为1024
        public let name: String?

        public init(fleetId: String, name: String? = nil) {
            self.fleetId = fleetId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case name = "Name"
        }
    }

    /// DeleteScalingPolicy返回参数结构体
    public struct DeleteScalingPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除扩缩容配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteScalingPolicy）用于删除服务器舰队的扩缩容策略。
    /// 通过服务器舰队ID和策略名称删除服务器舰队的扩缩容策略，只传递服务器舰队ID时，会将这个服务器舰队下的所有策略都删除。
    /// 传递策略名称时，单独删除策略名称对应的策略。
    @inlinable
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScalingPolicyResponse> {
        self.client.execute(action: "DeleteScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除扩缩容配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteScalingPolicy）用于删除服务器舰队的扩缩容策略。
    /// 通过服务器舰队ID和策略名称删除服务器舰队的扩缩容策略，只传递服务器舰队ID时，会将这个服务器舰队下的所有策略都删除。
    /// 传递策略名称时，单独删除策略名称对应的策略。
    @inlinable
    public func deleteScalingPolicy(_ input: DeleteScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScalingPolicyResponse {
        try await self.client.execute(action: "DeleteScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除扩缩容配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteScalingPolicy）用于删除服务器舰队的扩缩容策略。
    /// 通过服务器舰队ID和策略名称删除服务器舰队的扩缩容策略，只传递服务器舰队ID时，会将这个服务器舰队下的所有策略都删除。
    /// 传递策略名称时，单独删除策略名称对应的策略。
    @inlinable
    public func deleteScalingPolicy(fleetId: String, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScalingPolicyResponse> {
        self.deleteScalingPolicy(DeleteScalingPolicyRequest(fleetId: fleetId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 删除扩缩容配置
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（DeleteScalingPolicy）用于删除服务器舰队的扩缩容策略。
    /// 通过服务器舰队ID和策略名称删除服务器舰队的扩缩容策略，只传递服务器舰队ID时，会将这个服务器舰队下的所有策略都删除。
    /// 传递策略名称时，单独删除策略名称对应的策略。
    @inlinable
    public func deleteScalingPolicy(fleetId: String, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScalingPolicyResponse {
        try await self.deleteScalingPolicy(DeleteScalingPolicyRequest(fleetId: fleetId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
