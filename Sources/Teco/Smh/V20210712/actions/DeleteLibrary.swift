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
    /// 删除媒体库
    ///
    /// 删除 PaaS 服务媒体库
    @inlinable
    public func deleteLibrary(_ input: DeleteLibraryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLibraryResponse > {
        self.client.execute(action: "DeleteLibrary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除媒体库
    ///
    /// 删除 PaaS 服务媒体库
    @inlinable
    public func deleteLibrary(_ input: DeleteLibraryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLibraryResponse {
        try await self.client.execute(action: "DeleteLibrary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLibrary请求参数结构体
    public struct DeleteLibraryRequest: TCRequestModel {
        /// 媒体库 ID
        public let libraryId: String
        
        public init (libraryId: String) {
            self.libraryId = libraryId
        }
        
        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
        }
    }
    
    /// DeleteLibrary返回参数结构体
    public struct DeleteLibraryResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
