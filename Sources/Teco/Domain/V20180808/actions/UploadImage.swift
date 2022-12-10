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

extension Domain {
    /// 证件图片上传
    ///
    /// 本接口 ( UploadImage ) 用于证件图片上传 。
    @inlinable
    public func uploadImage(_ input: UploadImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UploadImageResponse > {
        self.client.execute(action: "UploadImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 证件图片上传
    ///
    /// 本接口 ( UploadImage ) 用于证件图片上传 。
    @inlinable
    public func uploadImage(_ input: UploadImageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadImageResponse {
        try await self.client.execute(action: "UploadImage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UploadImage请求参数结构体
    public struct UploadImageRequest: TCRequestModel {
        /// 资质照片，照片的base64编码。
        public let imageFile: String
        
        public init (imageFile: String) {
            self.imageFile = imageFile
        }
        
        enum CodingKeys: String, CodingKey {
            case imageFile = "ImageFile"
        }
    }
    
    /// UploadImage返回参数结构体
    public struct UploadImageResponse: TCResponseModel {
        /// 资质照片地址。
        public let accessUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accessUrl = "AccessUrl"
            case requestId = "RequestId"
        }
    }
}