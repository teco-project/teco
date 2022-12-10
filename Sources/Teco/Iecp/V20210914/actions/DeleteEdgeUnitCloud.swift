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

extension Iecp {
    /// 删除边缘单元
    ///
    /// 删除边缘单元
    @inlinable
    public func deleteEdgeUnitCloud(_ input: DeleteEdgeUnitCloudRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteEdgeUnitCloudResponse > {
        self.client.execute(action: "DeleteEdgeUnitCloud", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除边缘单元
    ///
    /// 删除边缘单元
    @inlinable
    public func deleteEdgeUnitCloud(_ input: DeleteEdgeUnitCloudRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteEdgeUnitCloudResponse {
        try await self.client.execute(action: "DeleteEdgeUnitCloud", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteEdgeUnitCloud请求参数结构体
    public struct DeleteEdgeUnitCloudRequest: TCRequestModel {
        /// 边缘集群ID
        public let edgeUnitId: UInt64
        
        public init (edgeUnitId: UInt64) {
            self.edgeUnitId = edgeUnitId
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
        }
    }
    
    /// DeleteEdgeUnitCloud返回参数结构体
    public struct DeleteEdgeUnitCloudResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}