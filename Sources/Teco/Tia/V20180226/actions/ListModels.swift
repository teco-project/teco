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

import TecoPaginationHelpers

extension Tia {
    /// ListModels请求参数结构体
    public struct ListModelsRequest: TCPaginatedRequest {
        /// 部署模型的集群， `集群模式` 必填
        public let cluster: String?

        /// 分页参数，返回数量上限
        public let limit: UInt64?

        /// 分页参数，分页起始位置
        public let offset: UInt64?

        /// 部署类型，取值 `serverless` 即为 `无服务器模式`，否则为 `集群模式`。
        public let servType: String?

        public init(cluster: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, servType: String? = nil) {
            self.cluster = cluster
            self.limit = limit
            self.offset = offset
            self.servType = servType
        }

        enum CodingKeys: String, CodingKey {
            case cluster = "Cluster"
            case limit = "Limit"
            case offset = "Offset"
            case servType = "ServType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListModelsResponse) -> ListModelsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListModelsRequest(cluster: self.cluster, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), servType: self.servType)
        }
    }

    /// ListModels返回参数结构体
    public struct ListModelsResponse: TCPaginatedResponse {
        /// Model 数组，用以显示所有模型的信息
        public let models: [Model]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case models = "Models"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Model] {
            self.models
        }
    }

    /// 列举Model
    ///
    /// 用以列举已经部署的模型。而部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。不同部署模式下的模型分开列出。
    @inlinable
    public func listModels(_ input: ListModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListModelsResponse> {
        self.client.execute(action: "ListModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举Model
    ///
    /// 用以列举已经部署的模型。而部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。不同部署模式下的模型分开列出。
    @inlinable
    public func listModels(_ input: ListModelsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListModelsResponse {
        try await self.client.execute(action: "ListModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列举Model
    ///
    /// 用以列举已经部署的模型。而部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。不同部署模式下的模型分开列出。
    @inlinable
    public func listModels(cluster: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, servType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListModelsResponse> {
        let input = ListModelsRequest(cluster: cluster, limit: limit, offset: offset, servType: servType)
        return self.client.execute(action: "ListModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列举Model
    ///
    /// 用以列举已经部署的模型。而部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。不同部署模式下的模型分开列出。
    @inlinable
    public func listModels(cluster: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, servType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListModelsResponse {
        let input = ListModelsRequest(cluster: cluster, limit: limit, offset: offset, servType: servType)
        return try await self.client.execute(action: "ListModels", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
