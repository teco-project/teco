//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ape {
    /// 获取图片下载地址
    ///
    /// 核销图片，获取原图URL地址
    @inlinable
    public func createOrderAndDownloads(_ input: CreateOrderAndDownloadsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOrderAndDownloadsResponse > {
        self.client.execute(action: "CreateOrderAndDownloads", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取图片下载地址
    ///
    /// 核销图片，获取原图URL地址
    @inlinable
    public func createOrderAndDownloads(_ input: CreateOrderAndDownloadsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderAndDownloadsResponse {
        try await self.client.execute(action: "CreateOrderAndDownloads", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateOrderAndDownloads请求参数结构体
    public struct CreateOrderAndDownloadsRequest: TCRequestModel {
        /// ImageId必填，单张购买，所有必填，会员身份可以省略部分参数
        public let imageInfos: [ImageInfo]
        
        public init (imageInfos: [ImageInfo]) {
            self.imageInfos = imageInfos
        }
        
        enum CodingKeys: String, CodingKey {
            case imageInfos = "ImageInfos"
        }
    }
    
    /// CreateOrderAndDownloads返回参数结构体
    public struct CreateOrderAndDownloadsResponse: TCResponseModel {
        /// 成功核销后可以获取图片基本信息和原图地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadInfos: [DownloadInfo]?
        
        /// 可下载图片数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadInfos = "DownloadInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}