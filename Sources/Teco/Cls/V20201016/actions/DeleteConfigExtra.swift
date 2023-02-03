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

extension Cls {
    /// DeleteConfigExtra请求参数结构体
    public struct DeleteConfigExtraRequest: TCRequestModel {
        /// 采集规则扩展配置ID
        public let configExtraId: String

        public init(configExtraId: String) {
            self.configExtraId = configExtraId
        }

        enum CodingKeys: String, CodingKey {
            case configExtraId = "ConfigExtraId"
        }
    }

    /// DeleteConfigExtra返回参数结构体
    public struct DeleteConfigExtraResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除特殊采集规则配置
    ///
    /// 本接口用于删除特殊采集规则配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable @discardableResult
    public func deleteConfigExtra(_ input: DeleteConfigExtraRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConfigExtraResponse> {
        self.client.execute(action: "DeleteConfigExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除特殊采集规则配置
    ///
    /// 本接口用于删除特殊采集规则配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable @discardableResult
    public func deleteConfigExtra(_ input: DeleteConfigExtraRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigExtraResponse {
        try await self.client.execute(action: "DeleteConfigExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除特殊采集规则配置
    ///
    /// 本接口用于删除特殊采集规则配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable @discardableResult
    public func deleteConfigExtra(configExtraId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteConfigExtraResponse> {
        let input = DeleteConfigExtraRequest(configExtraId: configExtraId)
        return self.client.execute(action: "DeleteConfigExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除特殊采集规则配置
    ///
    /// 本接口用于删除特殊采集规则配置，特殊采集配置应用于自建K8S环境的采集Agent
    @inlinable @discardableResult
    public func deleteConfigExtra(configExtraId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteConfigExtraResponse {
        let input = DeleteConfigExtraRequest(configExtraId: configExtraId)
        return try await self.client.execute(action: "DeleteConfigExtra", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
