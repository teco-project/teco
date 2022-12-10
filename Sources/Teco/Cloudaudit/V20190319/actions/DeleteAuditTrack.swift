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

extension Cloudaudit {
    /// 删除云审计跟踪集
    ///
    /// 删除云审计跟踪集
    @inlinable
    public func deleteAuditTrack(_ input: DeleteAuditTrackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAuditTrackResponse > {
        self.client.execute(action: "DeleteAuditTrack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除云审计跟踪集
    ///
    /// 删除云审计跟踪集
    @inlinable
    public func deleteAuditTrack(_ input: DeleteAuditTrackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAuditTrackResponse {
        try await self.client.execute(action: "DeleteAuditTrack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAuditTrack请求参数结构体
    public struct DeleteAuditTrackRequest: TCRequestModel {
        /// 跟踪集 ID
        public let trackId: UInt64
        
        public init (trackId: UInt64) {
            self.trackId = trackId
        }
        
        enum CodingKeys: String, CodingKey {
            case trackId = "TrackId"
        }
    }
    
    /// DeleteAuditTrack返回参数结构体
    public struct DeleteAuditTrackResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}