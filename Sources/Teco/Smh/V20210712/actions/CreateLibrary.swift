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

extension Smh {
    /// CreateLibrary请求参数结构体
    public struct CreateLibraryRequest: TCRequestModel {
        /// 媒体库名称，最多 50 个字符
        public let name: String
        
        /// 存储桶全名，新建后不可更改
        public let bucketName: String
        
        /// 存储桶所在地域，新建后不可更改
        public let bucketRegion: String
        
        /// 媒体库配置项，部分参数新建后不可更改
        public let libraryExtension: LibraryExtension
        
        /// 备注，最多 250 个字符
        public let remark: String?
        
        public init (name: String, bucketName: String, bucketRegion: String, libraryExtension: LibraryExtension, remark: String? = nil) {
            self.name = name
            self.bucketName = bucketName
            self.bucketRegion = bucketRegion
            self.libraryExtension = libraryExtension
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case bucketName = "BucketName"
            case bucketRegion = "BucketRegion"
            case libraryExtension = "LibraryExtension"
            case remark = "Remark"
        }
    }
    
    /// CreateLibrary返回参数结构体
    public struct CreateLibraryResponse: TCResponseModel {
        /// 媒体库 ID
        public let libraryId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建媒体库
    ///
    /// 创建 PaaS 服务媒体库
    @inlinable
    public func createLibrary(_ input: CreateLibraryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLibraryResponse > {
        self.client.execute(action: "CreateLibrary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建媒体库
    ///
    /// 创建 PaaS 服务媒体库
    @inlinable
    public func createLibrary(_ input: CreateLibraryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLibraryResponse {
        try await self.client.execute(action: "CreateLibrary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
