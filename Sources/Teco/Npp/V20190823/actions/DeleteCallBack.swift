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

extension Npp {
    /// 回拨呼叫取消
    @inlinable
    public func deleteCallBack(_ input: DeleteCallBackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCallBackResponse > {
        self.client.execute(action: "DeleteCallBack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 回拨呼叫取消
    @inlinable
    public func deleteCallBack(_ input: DeleteCallBackRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCallBackResponse {
        try await self.client.execute(action: "DeleteCallBack", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteCallBack请求参数结构体
    public struct DeleteCallBackRequest: TCRequestModel {
        /// 业务appid
        public let bizAppId: String
        
        /// 回拨请求响应中返回的 callId
        public let callId: String
        
        /// 0：不管通话状态直接拆线（默认) 1：主叫响铃以后状态不拆线 2：主叫接听以后状态不拆线 3：被叫响铃以后状态不拆线 4：被叫接听以后状态不拆线
        public let cancelFlag: String?
        
        public init (bizAppId: String, callId: String, cancelFlag: String?) {
            self.bizAppId = bizAppId
            self.callId = callId
            self.cancelFlag = cancelFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case bizAppId = "BizAppId"
            case callId = "CallId"
            case cancelFlag = "CancelFlag"
        }
    }
    
    /// DeleteCallBack返回参数结构体
    public struct DeleteCallBackResponse: TCResponseModel {
        /// 错误码
        public let errorCode: String
        
        /// 错误原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?
        
        /// 话单id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let callId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case msg = "Msg"
            case callId = "CallId"
            case requestId = "RequestId"
        }
    }
}
