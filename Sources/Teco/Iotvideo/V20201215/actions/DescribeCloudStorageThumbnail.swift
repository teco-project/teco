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

extension Iotvideo {
    /// 拉取云存事件缩略图
    @inlinable
    public func describeCloudStorageThumbnail(_ input: DescribeCloudStorageThumbnailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCloudStorageThumbnailResponse > {
        self.client.execute(action: "DescribeCloudStorageThumbnail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉取云存事件缩略图
    @inlinable
    public func describeCloudStorageThumbnail(_ input: DescribeCloudStorageThumbnailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageThumbnailResponse {
        try await self.client.execute(action: "DescribeCloudStorageThumbnail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCloudStorageThumbnail请求参数结构体
    public struct DescribeCloudStorageThumbnailRequest: TCRequestModel {
        /// 产品ID
        public let productId: String
        
        /// 设备名称
        public let deviceName: String
        
        /// 缩略图文件名
        public let thumbnail: String
        
        public init (productId: String, deviceName: String, thumbnail: String) {
            self.productId = productId
            self.deviceName = deviceName
            self.thumbnail = thumbnail
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case thumbnail = "Thumbnail"
        }
    }
    
    /// DescribeCloudStorageThumbnail返回参数结构体
    public struct DescribeCloudStorageThumbnailResponse: TCResponseModel {
        /// 缩略图访问地址
        public let thumbnailURL: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case thumbnailURL = "ThumbnailURL"
            case requestId = "RequestId"
        }
    }
}
