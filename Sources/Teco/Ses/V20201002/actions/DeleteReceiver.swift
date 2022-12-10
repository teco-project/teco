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

extension Ses {
    /// 删除收件人列表
    ///
    /// 根据收件id删除收件人列表,同时删除列表中的所有收件邮箱
    @inlinable
    public func deleteReceiver(_ input: DeleteReceiverRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteReceiverResponse > {
        self.client.execute(action: "DeleteReceiver", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除收件人列表
    ///
    /// 根据收件id删除收件人列表,同时删除列表中的所有收件邮箱
    @inlinable
    public func deleteReceiver(_ input: DeleteReceiverRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteReceiverResponse {
        try await self.client.execute(action: "DeleteReceiver", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteReceiver请求参数结构体
    public struct DeleteReceiverRequest: TCRequestModel {
        /// 收件人列表id，创建收件人列表时会返回
        public let receiverId: UInt64
        
        public init (receiverId: UInt64) {
            self.receiverId = receiverId
        }
        
        enum CodingKeys: String, CodingKey {
            case receiverId = "ReceiverId"
        }
    }
    
    /// DeleteReceiver返回参数结构体
    public struct DeleteReceiverResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
