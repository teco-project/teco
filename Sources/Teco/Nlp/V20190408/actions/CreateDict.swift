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

extension Nlp {
    /// CreateDict请求参数结构体
    public struct CreateDictRequest: TCRequestModel {
        /// 自定义词库名称，不超过20字。
        public let name: String
        
        /// 自定义词库描述，不超过100字。
        public let description: String?
        
        public init (name: String, description: String? = nil) {
            self.name = name
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
        }
    }
    
    /// CreateDict返回参数结构体
    public struct CreateDictResponse: TCResponseModel {
        /// 创建的自定义词库ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dictId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dictId = "DictId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建自定义词库
    ///
    /// 根据指定的名称、描述创建自定义词库。
    @inlinable
    public func createDict(_ input: CreateDictRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDictResponse > {
        self.client.execute(action: "CreateDict", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建自定义词库
    ///
    /// 根据指定的名称、描述创建自定义词库。
    @inlinable
    public func createDict(_ input: CreateDictRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDictResponse {
        try await self.client.execute(action: "CreateDict", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
