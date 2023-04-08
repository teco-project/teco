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

extension Tke {
    /// DescribeEnableVpcCniProgress请求参数结构体
    public struct DescribeEnableVpcCniProgressRequest: TCRequestModel {
        /// 开启vpc-cni的集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeEnableVpcCniProgress返回参数结构体
    public struct DescribeEnableVpcCniProgressResponse: TCResponseModel {
        /// 任务进度的描述：Running/Succeed/Failed
        public let status: String

        /// 当任务进度为Failed时，对任务状态的进一步描述，例如IPAMD组件安装失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMessage: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case errorMessage = "ErrorMessage"
            case requestId = "RequestId"
        }
    }

    /// 查询开启vpc-cni异步任务的进度
    ///
    /// 本接口用于查询开启vpc-cni模式的任务进度
    @inlinable
    public func describeEnableVpcCniProgress(_ input: DescribeEnableVpcCniProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnableVpcCniProgressResponse> {
        self.client.execute(action: "DescribeEnableVpcCniProgress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询开启vpc-cni异步任务的进度
    ///
    /// 本接口用于查询开启vpc-cni模式的任务进度
    @inlinable
    public func describeEnableVpcCniProgress(_ input: DescribeEnableVpcCniProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnableVpcCniProgressResponse {
        try await self.client.execute(action: "DescribeEnableVpcCniProgress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询开启vpc-cni异步任务的进度
    ///
    /// 本接口用于查询开启vpc-cni模式的任务进度
    @inlinable
    public func describeEnableVpcCniProgress(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnableVpcCniProgressResponse> {
        self.describeEnableVpcCniProgress(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询开启vpc-cni异步任务的进度
    ///
    /// 本接口用于查询开启vpc-cni模式的任务进度
    @inlinable
    public func describeEnableVpcCniProgress(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnableVpcCniProgressResponse {
        try await self.describeEnableVpcCniProgress(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
