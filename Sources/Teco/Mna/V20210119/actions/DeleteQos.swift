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

extension Mna {
    /// DeleteQos请求参数结构体
    public struct DeleteQosRequest: TCRequestModel {
        /// 单次加速唯一 Id
        public let sessionId: String

        public init(sessionId: String) {
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
        }
    }

    /// DeleteQos返回参数结构体
    public struct DeleteQosResponse: TCResponseModel {
        /// 单次加速唯一 Id
        public let sessionId: String

        /// 本次加速会话持续时间（单位秒）
        public let duration: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case duration = "Duration"
            case requestId = "RequestId"
        }
    }

    /// 停止Qos加速过程
    ///
    /// 移动网络停止Qos加速过程
    @inlinable
    public func deleteQos(_ input: DeleteQosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteQosResponse > {
        self.client.execute(action: "DeleteQos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止Qos加速过程
    ///
    /// 移动网络停止Qos加速过程
    @inlinable
    public func deleteQos(_ input: DeleteQosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteQosResponse {
        try await self.client.execute(action: "DeleteQos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止Qos加速过程
    ///
    /// 移动网络停止Qos加速过程
    @inlinable
    public func deleteQos(sessionId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteQosResponse > {
        self.deleteQos(DeleteQosRequest(sessionId: sessionId), logger: logger, on: eventLoop)
    }

    /// 停止Qos加速过程
    ///
    /// 移动网络停止Qos加速过程
    @inlinable
    public func deleteQos(sessionId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteQosResponse {
        try await self.deleteQos(DeleteQosRequest(sessionId: sessionId), logger: logger, on: eventLoop)
    }
}
