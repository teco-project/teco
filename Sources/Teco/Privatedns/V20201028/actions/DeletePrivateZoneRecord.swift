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

extension Privatedns {
    /// 删除私有域解析记录
    ///
    /// 删除私有域解析记录
    @inlinable
    public func deletePrivateZoneRecord(_ input: DeletePrivateZoneRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePrivateZoneRecordResponse > {
        self.client.execute(action: "DeletePrivateZoneRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除私有域解析记录
    ///
    /// 删除私有域解析记录
    @inlinable
    public func deletePrivateZoneRecord(_ input: DeletePrivateZoneRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivateZoneRecordResponse {
        try await self.client.execute(action: "DeletePrivateZoneRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeletePrivateZoneRecord请求参数结构体
    public struct DeletePrivateZoneRecordRequest: TCRequestModel {
        /// 私有域ID
        public let zoneId: String?
        
        /// 记录ID
        public let recordId: String?
        
        /// 记录ID数组，RecordId 优先
        public let recordIdSet: [String]?
        
        public init (zoneId: String?, recordId: String?, recordIdSet: [String]?) {
            self.zoneId = zoneId
            self.recordId = recordId
            self.recordIdSet = recordIdSet
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case recordId = "RecordId"
            case recordIdSet = "RecordIdSet"
        }
    }
    
    /// DeletePrivateZoneRecord返回参数结构体
    public struct DeletePrivateZoneRecordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}