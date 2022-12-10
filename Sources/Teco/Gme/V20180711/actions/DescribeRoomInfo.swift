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

extension Gme {
    /// 获取房间内用户信息
    ///
    /// 获取房间内用户信息
    @inlinable
    public func describeRoomInfo(_ input: DescribeRoomInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRoomInfoResponse > {
        self.client.execute(action: "DescribeRoomInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取房间内用户信息
    ///
    /// 获取房间内用户信息
    @inlinable
    public func describeRoomInfo(_ input: DescribeRoomInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoomInfoResponse {
        try await self.client.execute(action: "DescribeRoomInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRoomInfo请求参数结构体
    public struct DescribeRoomInfoRequest: TCRequestModel {
        /// 应用ID，登录[控制台 - 服务管理](https://console.cloud.tencent.com/gamegme)创建应用得到的AppID
        public let sdkAppId: UInt64
        
        /// 房间号列表，最大不能超过10个（RoomIds、StrRoomIds必须填一个）
        public let roomIds: [UInt64]?
        
        /// 字符串类型房间号列表，最大不能超过10个（RoomIds、StrRoomIds必须填一个）
        public let strRoomIds: [String]?
        
        public init (sdkAppId: UInt64, roomIds: [UInt64]?, strRoomIds: [String]?) {
            self.sdkAppId = sdkAppId
            self.roomIds = roomIds
            self.strRoomIds = strRoomIds
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomIds = "RoomIds"
            case strRoomIds = "StrRoomIds"
        }
    }
    
    /// DescribeRoomInfo返回参数结构体
    public struct DescribeRoomInfoResponse: TCResponseModel {
        /// 操作结果, 0成功, 非0失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UInt64?
        
        /// 房间用户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let roomUsers: [RoomUser]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case roomUsers = "RoomUsers"
            case requestId = "RequestId"
        }
    }
}