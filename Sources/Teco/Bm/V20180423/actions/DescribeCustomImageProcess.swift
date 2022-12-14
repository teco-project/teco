//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Bm {
    /// DescribeCustomImageProcess请求参数结构体
    public struct DescribeCustomImageProcessRequest: TCRequestModel {
        /// 镜像ID
        public let imageId: String

        public init(imageId: String) {
            self.imageId = imageId
        }

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
        }
    }

    /// DescribeCustomImageProcess返回参数结构体
    public struct DescribeCustomImageProcessResponse: TCResponseModel {
        /// 镜像制作进度
        public let customImageProcessSet: [CustomImageProcess]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case customImageProcessSet = "CustomImageProcessSet"
            case requestId = "RequestId"
        }
    }

    /// 查询自定义镜像制作进度
    @inlinable
    public func describeCustomImageProcess(_ input: DescribeCustomImageProcessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCustomImageProcessResponse > {
        self.client.execute(action: "DescribeCustomImageProcess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自定义镜像制作进度
    @inlinable
    public func describeCustomImageProcess(_ input: DescribeCustomImageProcessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomImageProcessResponse {
        try await self.client.execute(action: "DescribeCustomImageProcess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自定义镜像制作进度
    @inlinable
    public func describeCustomImageProcess(imageId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCustomImageProcessResponse > {
        self.describeCustomImageProcess(DescribeCustomImageProcessRequest(imageId: imageId), logger: logger, on: eventLoop)
    }

    /// 查询自定义镜像制作进度
    @inlinable
    public func describeCustomImageProcess(imageId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCustomImageProcessResponse {
        try await self.describeCustomImageProcess(DescribeCustomImageProcessRequest(imageId: imageId), logger: logger, on: eventLoop)
    }
}
