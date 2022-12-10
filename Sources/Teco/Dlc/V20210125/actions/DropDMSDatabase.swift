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

extension Dlc {
    /// DMS元数据删除库
    @inlinable
    public func dropDMSDatabase(_ input: DropDMSDatabaseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DropDMSDatabaseResponse > {
        self.client.execute(action: "DropDMSDatabase", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// DMS元数据删除库
    @inlinable
    public func dropDMSDatabase(_ input: DropDMSDatabaseRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DropDMSDatabaseResponse {
        try await self.client.execute(action: "DropDMSDatabase", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DropDMSDatabase请求参数结构体
    public struct DropDMSDatabaseRequest: TCRequestModel {
        /// 数据库名称
        public let name: String
        
        /// 是否删除数据
        public let deleteData: Bool?
        
        /// 是否级联删除
        public let cascade: Bool?
        
        public init (name: String, deleteData: Bool?, cascade: Bool?) {
            self.name = name
            self.deleteData = deleteData
            self.cascade = cascade
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case deleteData = "DeleteData"
            case cascade = "Cascade"
        }
    }
    
    /// DropDMSDatabase返回参数结构体
    public struct DropDMSDatabaseResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
