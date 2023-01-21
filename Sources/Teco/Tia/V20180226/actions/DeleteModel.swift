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

extension Tia {
    /// DeleteModel请求参数结构体
    public struct DeleteModelRequest: TCRequestModel {
        /// 要删除的模型名称
        public let name: String

        /// 要删除的模型所在的集群名称，`集群模式` 必填
        public let cluster: String?

        /// 模型类型，取值 `serverless` 即为 `无服务器模式`，否则为 `集群模式`
        public let servType: String?

        public init(name: String, cluster: String? = nil, servType: String? = nil) {
            self.name = name
            self.cluster = cluster
            self.servType = servType
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case cluster = "Cluster"
            case servType = "ServType"
        }
    }

    /// DeleteModel返回参数结构体
    public struct DeleteModelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Model
    ///
    /// 删除指定的部署模型。模型有两种部署模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable @discardableResult
    public func deleteModel(_ input: DeleteModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelResponse> {
        self.client.execute(action: "DeleteModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Model
    ///
    /// 删除指定的部署模型。模型有两种部署模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable @discardableResult
    public func deleteModel(_ input: DeleteModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelResponse {
        try await self.client.execute(action: "DeleteModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Model
    ///
    /// 删除指定的部署模型。模型有两种部署模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable @discardableResult
    public func deleteModel(name: String, cluster: String? = nil, servType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelResponse> {
        self.deleteModel(DeleteModelRequest(name: name, cluster: cluster, servType: servType), region: region, logger: logger, on: eventLoop)
    }

    /// 删除Model
    ///
    /// 删除指定的部署模型。模型有两种部署模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable @discardableResult
    public func deleteModel(name: String, cluster: String? = nil, servType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelResponse {
        try await self.deleteModel(DeleteModelRequest(name: name, cluster: cluster, servType: servType), region: region, logger: logger, on: eventLoop)
    }
}
