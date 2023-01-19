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

extension Live {
    /// DeletePullStreamConfig请求参数结构体
    public struct DeletePullStreamConfigRequest: TCRequestModel {
        /// 配置 ID。
        /// 1. 在添加拉流配置接口 [CreatePullStreamConfig](/document/api/267/30159) 调用返回值中获取配置 ID。
        /// 2. 可以从接口 [DescribePullStreamConfigs](/document/api/267/30158) 中查询已创建过的拉流配置列表。
        public let configId: String

        public init(configId: String) {
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }

    /// DeletePullStreamConfig返回参数结构体
    public struct DeletePullStreamConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除拉流配置(该接口已下线,请使用新接口 DeleteLivePullStreamTask)
    ///
    /// 删除直播拉流配置。该接口已下线,请使用新接口 DeleteLivePullStreamTask。
    @inlinable
    public func deletePullStreamConfig(_ input: DeletePullStreamConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePullStreamConfigResponse> {
        self.client.execute(action: "DeletePullStreamConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除拉流配置(该接口已下线,请使用新接口 DeleteLivePullStreamTask)
    ///
    /// 删除直播拉流配置。该接口已下线,请使用新接口 DeleteLivePullStreamTask。
    @inlinable
    public func deletePullStreamConfig(_ input: DeletePullStreamConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePullStreamConfigResponse {
        try await self.client.execute(action: "DeletePullStreamConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除拉流配置(该接口已下线,请使用新接口 DeleteLivePullStreamTask)
    ///
    /// 删除直播拉流配置。该接口已下线,请使用新接口 DeleteLivePullStreamTask。
    @inlinable
    public func deletePullStreamConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePullStreamConfigResponse> {
        self.deletePullStreamConfig(DeletePullStreamConfigRequest(configId: configId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除拉流配置(该接口已下线,请使用新接口 DeleteLivePullStreamTask)
    ///
    /// 删除直播拉流配置。该接口已下线,请使用新接口 DeleteLivePullStreamTask。
    @inlinable
    public func deletePullStreamConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePullStreamConfigResponse {
        try await self.deletePullStreamConfig(DeletePullStreamConfigRequest(configId: configId), region: region, logger: logger, on: eventLoop)
    }
}
