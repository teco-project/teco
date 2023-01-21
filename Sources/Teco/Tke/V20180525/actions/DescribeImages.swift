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

extension Tke {
    /// DescribeImages请求参数结构体
    public struct DescribeImagesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeImages返回参数结构体
    public struct DescribeImagesResponse: TCResponseModel {
        /// 镜像数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 镜像信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageInstanceSet: [ImageInstance]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imageInstanceSet = "ImageInstanceSet"
            case requestId = "RequestId"
        }
    }

    /// 获取镜像信息
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取镜像信息
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取镜像信息
    @inlinable
    public func describeImages(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.describeImages(DescribeImagesRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取镜像信息
    @inlinable
    public func describeImages(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.describeImages(DescribeImagesRequest(), region: region, logger: logger, on: eventLoop)
    }
}
