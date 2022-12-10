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

extension Teo {
    /// 删除站点
    @inlinable
    public func deleteZone(_ input: DeleteZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteZoneResponse > {
        self.client.execute(action: "DeleteZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除站点
    @inlinable
    public func deleteZone(_ input: DeleteZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteZoneResponse {
        try await self.client.execute(action: "DeleteZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteZone请求参数结构体
    public struct DeleteZoneRequest: TCRequestModel {
        /// 站点 ID
        public let id: String
        
        public init (id: String) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// DeleteZone返回参数结构体
    public struct DeleteZoneResponse: TCResponseModel {
        /// 站点 ID
        public let id: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }
}
