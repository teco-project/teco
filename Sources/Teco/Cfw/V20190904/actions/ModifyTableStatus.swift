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

extension Cfw {
    /// 修改规则表状态
    ///
    /// 修改规则表状态
    @inlinable
    public func modifyTableStatus(_ input: ModifyTableStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyTableStatusResponse > {
        self.client.execute(action: "ModifyTableStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改规则表状态
    ///
    /// 修改规则表状态
    @inlinable
    public func modifyTableStatus(_ input: ModifyTableStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTableStatusResponse {
        try await self.client.execute(action: "ModifyTableStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyTableStatus请求参数结构体
    public struct ModifyTableStatusRequest: TCRequestModel {
        /// EdgeId值两个vpc间的边id
        public let edgeId: String?
        
        /// 状态值，1：锁表，2：解锁表
        public let status: UInt64?
        
        /// Nat所在地域
        public let area: String?
        
        /// 0： 出向，1：入向
        public let direction: UInt64?
        
        public init (edgeId: String?, status: UInt64?, area: String?, direction: UInt64?) {
            self.edgeId = edgeId
            self.status = status
            self.area = area
            self.direction = direction
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeId = "EdgeId"
            case status = "Status"
            case area = "Area"
            case direction = "Direction"
        }
    }
    
    /// ModifyTableStatus返回参数结构体
    public struct ModifyTableStatusResponse: TCResponseModel {
        /// 0：正常，-1：不正常
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}