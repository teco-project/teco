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

extension Tia {
    /// DescribeModel请求参数结构体
    public struct DescribeModelRequest: TCRequestModel {
        /// 模型名称
        public let name: String

        /// 模型所在集群名称，`集群模式` 必填
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

    /// DescribeModel返回参数结构体
    public struct DescribeModelResponse: TCResponseModel {
        /// 模型信息
        public let model: Model

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case requestId = "RequestId"
        }
    }

    /// 描述Model
    ///
    /// 描述已经部署的某个模型。而模型部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable
    public func describeModel(_ input: DescribeModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelResponse> {
        self.client.execute(action: "DescribeModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 描述Model
    ///
    /// 描述已经部署的某个模型。而模型部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable
    public func describeModel(_ input: DescribeModelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelResponse {
        try await self.client.execute(action: "DescribeModel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 描述Model
    ///
    /// 描述已经部署的某个模型。而模型部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable
    public func describeModel(name: String, cluster: String? = nil, servType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelResponse> {
        self.describeModel(.init(name: name, cluster: cluster, servType: servType), region: region, logger: logger, on: eventLoop)
    }

    /// 描述Model
    ///
    /// 描述已经部署的某个模型。而模型部署有两种模式：`无服务器模式` 和 `集群模式`。`无服务器模式` 下，模型文件被部署到无服务器云函数，即 [SCF](https://cloud.tencent.com/product/scf)，用户可以在其控制台上进一步操作。`集群模式` 下，模型文件被部署到 TI-A 的计算集群中。
    @inlinable
    public func describeModel(name: String, cluster: String? = nil, servType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelResponse {
        try await self.describeModel(.init(name: name, cluster: cluster, servType: servType), region: region, logger: logger, on: eventLoop)
    }
}
