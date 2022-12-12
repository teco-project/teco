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

extension Yunsou {
    /// DataManipulation请求参数结构体
    public struct DataManipulationRequest: TCRequestModel {
        /// 操作类型，add或del
        public let opType: String
        
        /// 数据编码类型
        public let encoding: String
        
        /// 数据
        public let contents: String
        
        /// 应用Id
        public let resourceId: UInt64
        
        public init (opType: String, encoding: String, contents: String, resourceId: UInt64) {
            self.opType = opType
            self.encoding = encoding
            self.contents = contents
            self.resourceId = resourceId
        }
        
        enum CodingKeys: String, CodingKey {
            case opType = "OpType"
            case encoding = "Encoding"
            case contents = "Contents"
            case resourceId = "ResourceId"
        }
    }
    
    /// DataManipulation返回参数结构体
    public struct DataManipulationResponse: TCResponseModel {
        /// 数据操作结果
        public let data: DataManipulationResult
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 云搜数据上传
    ///
    /// 上传云搜数据的API接口。
    @inlinable
    public func dataManipulation(_ input: DataManipulationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DataManipulationResponse > {
        self.client.execute(action: "DataManipulation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云搜数据上传
    ///
    /// 上传云搜数据的API接口。
    @inlinable
    public func dataManipulation(_ input: DataManipulationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DataManipulationResponse {
        try await self.client.execute(action: "DataManipulation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
