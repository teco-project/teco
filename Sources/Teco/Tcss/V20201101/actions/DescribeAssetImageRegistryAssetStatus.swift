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

extension Tcss {
    /// DescribeAssetImageRegistryAssetStatus请求参数结构体
    public struct DescribeAssetImageRegistryAssetStatusRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAssetImageRegistryAssetStatus返回参数结构体
    public struct DescribeAssetImageRegistryAssetStatusResponse: TCResponseModel {
        /// 更新进度状态,doing更新中，success更新成功，failed失败
        public let status: String

        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let err: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case err = "Err"
            case requestId = "RequestId"
        }
    }

    /// 查看镜像仓库资产更新进度状态
    @inlinable
    public func describeAssetImageRegistryAssetStatus(_ input: DescribeAssetImageRegistryAssetStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryAssetStatusResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryAssetStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看镜像仓库资产更新进度状态
    @inlinable
    public func describeAssetImageRegistryAssetStatus(_ input: DescribeAssetImageRegistryAssetStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryAssetStatusResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryAssetStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看镜像仓库资产更新进度状态
    @inlinable
    public func describeAssetImageRegistryAssetStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryAssetStatusResponse> {
        self.describeAssetImageRegistryAssetStatus(DescribeAssetImageRegistryAssetStatusRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 查看镜像仓库资产更新进度状态
    @inlinable
    public func describeAssetImageRegistryAssetStatus(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryAssetStatusResponse {
        try await self.describeAssetImageRegistryAssetStatus(DescribeAssetImageRegistryAssetStatusRequest(), region: region, logger: logger, on: eventLoop)
    }
}
