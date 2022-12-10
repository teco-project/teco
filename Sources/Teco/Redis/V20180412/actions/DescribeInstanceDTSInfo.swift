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

extension Redis {
    /// 查询实例DTS信息
    ///
    /// 查询实例DTS信息
    @inlinable
    public func describeInstanceDTSInfo(_ input: DescribeInstanceDTSInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceDTSInfoResponse > {
        self.client.execute(action: "DescribeInstanceDTSInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询实例DTS信息
    ///
    /// 查询实例DTS信息
    @inlinable
    public func describeInstanceDTSInfo(_ input: DescribeInstanceDTSInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceDTSInfoResponse {
        try await self.client.execute(action: "DescribeInstanceDTSInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceDTSInfo请求参数结构体
    public struct DescribeInstanceDTSInfoRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeInstanceDTSInfo返回参数结构体
    public struct DescribeInstanceDTSInfoResponse: TCResponseModel {
        /// DTS任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?
        
        /// DTS任务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobName: String?
        
        /// 任务状态,取值为：1-创建中(Creating),3-校验中(Checking)4-校验通过(CheckPass),5-校验不通过（CheckNotPass）,7-任务运行(Running),8-准备完成（ReadyComplete）,9-任务成功（Success）,10-任务失败（Failed）,11-撤销中（Stopping）,12-完成中（Completing）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?
        
        /// 状态描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusDesc: String?
        
        /// 同步时延，单位：字节
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: Int64?
        
        /// 断开时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cutDownTime: String?
        
        /// 源实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let srcInfo: DescribeInstanceDTSInstanceInfo
        
        /// 目标实例信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dstInfo: DescribeInstanceDTSInstanceInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
            case status = "Status"
            case statusDesc = "StatusDesc"
            case offset = "Offset"
            case cutDownTime = "CutDownTime"
            case srcInfo = "SrcInfo"
            case dstInfo = "DstInfo"
            case requestId = "RequestId"
        }
    }
}