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

extension Iotvideoindustry {
    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevices(_ input: DescribeBindSceneDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBindSceneDevicesResponse > {
        self.client.execute(action: "DescribeBindSceneDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取场景绑定设备列表(旧)
    ///
    /// 获取场景绑定设备列表
    @inlinable
    public func describeBindSceneDevices(_ input: DescribeBindSceneDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindSceneDevicesResponse {
        try await self.client.execute(action: "DescribeBindSceneDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBindSceneDevices请求参数结构体
    public struct DescribeBindSceneDevicesRequest: TCRequestModel {
        /// 场景ID
        public let sceneId: Int64?
        
        /// 偏移值
        public let offset: Int64?
        
        /// 条数限制最大不能超过1000
        public let limit: Int64?
        
        public init (sceneId: Int64?, offset: Int64?, limit: Int64?) {
            self.sceneId = sceneId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case sceneId = "SceneId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeBindSceneDevices返回参数结构体
    public struct DescribeBindSceneDevicesResponse: TCResponseModel {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 设备列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let list: [DeviceItem]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case list = "List"
            case requestId = "RequestId"
        }
    }
}
