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

extension Tcss {
    /// 授权镜像扫描
    ///
    /// RenewImageAuthorizeState   授权镜像扫描
    @inlinable
    public func renewImageAuthorizeState(_ input: RenewImageAuthorizeStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RenewImageAuthorizeStateResponse > {
        self.client.execute(action: "RenewImageAuthorizeState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 授权镜像扫描
    ///
    /// RenewImageAuthorizeState   授权镜像扫描
    @inlinable
    public func renewImageAuthorizeState(_ input: RenewImageAuthorizeStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewImageAuthorizeStateResponse {
        try await self.client.execute(action: "RenewImageAuthorizeState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RenewImageAuthorizeState请求参数结构体
    public struct RenewImageAuthorizeStateRequest: TCRequestModel {
        /// 是否全部未授权镜像
        public let allImages: Bool
        
        /// 镜像ids
        public let imageIds: [String]?
        
        public init (allImages: Bool, imageIds: [String]?) {
            self.allImages = allImages
            self.imageIds = imageIds
        }
        
        enum CodingKeys: String, CodingKey {
            case allImages = "AllImages"
            case imageIds = "ImageIds"
        }
    }
    
    /// RenewImageAuthorizeState返回参数结构体
    public struct RenewImageAuthorizeStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
