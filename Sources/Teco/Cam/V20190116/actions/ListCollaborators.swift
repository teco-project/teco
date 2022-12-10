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

extension Cam {
    /// 获取协作者列表
    @inlinable
    public func listCollaborators(_ input: ListCollaboratorsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListCollaboratorsResponse > {
        self.client.execute(action: "ListCollaborators", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取协作者列表
    @inlinable
    public func listCollaborators(_ input: ListCollaboratorsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCollaboratorsResponse {
        try await self.client.execute(action: "ListCollaborators", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListCollaborators请求参数结构体
    public struct ListCollaboratorsRequest: TCRequestModel {
        /// 分页条数，缺省为20
        public let limit: UInt64?
        
        /// 分页起始值，缺省为0
        public let offset: UInt64?
        
        public init (limit: UInt64?, offset: UInt64?) {
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// ListCollaborators返回参数结构体
    public struct ListCollaboratorsResponse: TCResponseModel {
        /// 总数
        public let totalNum: UInt64
        
        /// 协作者信息
        public let data: [SubAccountInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalNum = "TotalNum"
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
