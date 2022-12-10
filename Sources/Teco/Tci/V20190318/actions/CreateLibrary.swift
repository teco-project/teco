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

extension Tci {
    /// 创建人员库
    @inlinable
    public func createLibrary(_ input: CreateLibraryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateLibraryResponse > {
        self.client.execute(action: "CreateLibrary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建人员库
    @inlinable
    public func createLibrary(_ input: CreateLibraryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLibraryResponse {
        try await self.client.execute(action: "CreateLibrary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateLibrary请求参数结构体
    public struct CreateLibraryRequest: TCRequestModel {
        /// 人员库名称
        public let libraryName: String
        
        /// 人员库唯一标志符，为空则系统自动生成。
        public let libraryId: String?
        
        public init (libraryName: String, libraryId: String?) {
            self.libraryName = libraryName
            self.libraryId = libraryId
        }
        
        enum CodingKeys: String, CodingKey {
            case libraryName = "LibraryName"
            case libraryId = "LibraryId"
        }
    }
    
    /// CreateLibrary返回参数结构体
    public struct CreateLibraryResponse: TCResponseModel {
        /// 人员库唯一标识符
        public let libraryId: String
        
        /// 人员库名称
        public let libraryName: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case libraryId = "LibraryId"
            case libraryName = "LibraryName"
            case requestId = "RequestId"
        }
    }
}
