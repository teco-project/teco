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

extension Cvm {
    /// DescribeImageSharePermission请求参数结构体
    public struct DescribeImageSharePermissionRequest: TCRequestModel {
        /// 需要共享的镜像Id
        public let imageId: String

        public init(imageId: String) {
            self.imageId = imageId
        }

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
        }
    }

    /// DescribeImageSharePermission返回参数结构体
    public struct DescribeImageSharePermissionResponse: TCResponseModel {
        /// 镜像共享信息
        public let sharePermissionSet: [SharePermission]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sharePermissionSet = "SharePermissionSet"
            case requestId = "RequestId"
        }
    }

    /// 查看镜像分享信息
    ///
    /// 本接口（DescribeImageSharePermission）用于查询镜像分享信息。
    @inlinable
    public func describeImageSharePermission(_ input: DescribeImageSharePermissionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageSharePermissionResponse> {
        self.client.execute(action: "DescribeImageSharePermission", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看镜像分享信息
    ///
    /// 本接口（DescribeImageSharePermission）用于查询镜像分享信息。
    @inlinable
    public func describeImageSharePermission(_ input: DescribeImageSharePermissionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageSharePermissionResponse {
        try await self.client.execute(action: "DescribeImageSharePermission", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看镜像分享信息
    ///
    /// 本接口（DescribeImageSharePermission）用于查询镜像分享信息。
    @inlinable
    public func describeImageSharePermission(imageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageSharePermissionResponse> {
        self.describeImageSharePermission(DescribeImageSharePermissionRequest(imageId: imageId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看镜像分享信息
    ///
    /// 本接口（DescribeImageSharePermission）用于查询镜像分享信息。
    @inlinable
    public func describeImageSharePermission(imageId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageSharePermissionResponse {
        try await self.describeImageSharePermission(DescribeImageSharePermissionRequest(imageId: imageId), region: region, logger: logger, on: eventLoop)
    }
}
