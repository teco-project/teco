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

extension Tcss {
    /// DescribeVirusDetail请求参数结构体
    public struct DescribeVirusDetailRequest: TCRequestModel {
        /// 木马文件id
        public let id: String
        
        public init (id: String) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// DescribeVirusDetail返回参数结构体
    public struct DescribeVirusDetailResponse: TCResponseModel {
        /// 镜像ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageId: String?
        
        /// 镜像名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageName: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        /// 木马文件大小
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let size: UInt64?
        
        /// 木马文件路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filePath: String?
        
        /// 最近生成时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modifyTime: String?
        
        /// 病毒名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virusName: String?
        
        /// 风险等级 RISK_CRITICAL, RISK_HIGH, RISK_MEDIUM, RISK_LOW, RISK_NOTICE。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskLevel: String?
        
        /// 容器名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerName: String?
        
        /// 容器id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerId: String?
        
        /// 主机名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostName: String?
        
        /// 主机id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostId: String?
        
        /// 进程名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processName: String?
        
        /// 进程路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processPath: String?
        
        /// 进程md5
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processMd5: String?
        
        /// 进程id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processId: UInt64?
        
        /// 进程参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processArgv: String?
        
        /// 进程链
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processChan: String?
        
        /// 进程组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processAccountGroup: String?
        
        /// 进程启动用户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processStartAccount: String?
        
        /// 进程文件权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let processFileAuthority: String?
        
        /// 来源：0：一键扫描， 1：定时扫描 2：实时监控
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceType: Int64?
        
        /// 集群名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podName: String?
        
        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [String]?
        
        /// 事件描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let harmDescribe: String?
        
        /// 建议方案
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestScheme: String?
        
        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mark: String?
        
        /// 风险文件名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileName: String?
        
        /// 文件MD5
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileMd5: String?
        
        /// 事件类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventType: String?
        
        /// DEAL_NONE:文件待处理
        /// DEAL_IGNORE:已经忽略
        /// DEAL_ADD_WHITELIST:加白
        /// DEAL_DEL:文件已经删除
        /// DEAL_ISOLATE:已经隔离
        /// DEAL_ISOLATING:隔离中
        /// DEAL_ISOLATE_FAILED:隔离失败
        /// DEAL_RECOVERING:恢复中
        /// DEAL_RECOVER_FAILED: 恢复失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?
        
        /// 失败子状态:
        /// FILE_NOT_FOUND:文件不存在
        /// FILE_ABNORMAL:文件异常
        /// FILE_ABNORMAL_DEAL_RECOVER:恢复文件时，文件异常
        /// BACKUP_FILE_NOT_FOUND:备份文件不存在
        /// CONTAINER_NOT_FOUND_DEAL_ISOLATE:隔离时，容器不存在
        /// CONTAINER_NOT_FOUND_DEAL_RECOVER:恢复时，容器不存在
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subStatus: String?
        
        /// 内网ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostIP: String?
        
        /// 外网ip
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientIP: String?
        
        /// 父进程启动用户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pProcessStartUser: String?
        
        /// 父进程用户组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pProcessUserGroup: String?
        
        /// 父进程路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pProcessPath: String?
        
        /// 父进程命令行参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pProcessParam: String?
        
        /// 祖先进程启动用户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ancestorProcessStartUser: String?
        
        /// 祖先进程用户组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ancestorProcessUserGroup: String?
        
        /// 祖先进程路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ancestorProcessPath: String?
        
        /// 祖先进程命令行参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ancestorProcessParam: String?
        
        /// 事件最后一次处理的时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operationTime: String?
        
        /// 容器隔离状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerNetStatus: String?
        
        /// 容器隔离子状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerNetSubStatus: String?
        
        /// 容器隔离操作来源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let containerIsolateOperationSrc: String?
        
        /// 检测平台
        /// 1: 云查杀引擎
        /// 2: tav
        /// 3: binaryAi
        /// 4: 异常行为
        /// 5: 威胁情报
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let checkPlatform: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case imageName = "ImageName"
            case createTime = "CreateTime"
            case size = "Size"
            case filePath = "FilePath"
            case modifyTime = "ModifyTime"
            case virusName = "VirusName"
            case riskLevel = "RiskLevel"
            case containerName = "ContainerName"
            case containerId = "ContainerId"
            case hostName = "HostName"
            case hostId = "HostId"
            case processName = "ProcessName"
            case processPath = "ProcessPath"
            case processMd5 = "ProcessMd5"
            case processId = "ProcessId"
            case processArgv = "ProcessArgv"
            case processChan = "ProcessChan"
            case processAccountGroup = "ProcessAccountGroup"
            case processStartAccount = "ProcessStartAccount"
            case processFileAuthority = "ProcessFileAuthority"
            case sourceType = "SourceType"
            case podName = "PodName"
            case tags = "Tags"
            case harmDescribe = "HarmDescribe"
            case suggestScheme = "SuggestScheme"
            case mark = "Mark"
            case fileName = "FileName"
            case fileMd5 = "FileMd5"
            case eventType = "EventType"
            case status = "Status"
            case subStatus = "SubStatus"
            case hostIP = "HostIP"
            case clientIP = "ClientIP"
            case pProcessStartUser = "PProcessStartUser"
            case pProcessUserGroup = "PProcessUserGroup"
            case pProcessPath = "PProcessPath"
            case pProcessParam = "PProcessParam"
            case ancestorProcessStartUser = "AncestorProcessStartUser"
            case ancestorProcessUserGroup = "AncestorProcessUserGroup"
            case ancestorProcessPath = "AncestorProcessPath"
            case ancestorProcessParam = "AncestorProcessParam"
            case operationTime = "OperationTime"
            case containerNetStatus = "ContainerNetStatus"
            case containerNetSubStatus = "ContainerNetSubStatus"
            case containerIsolateOperationSrc = "ContainerIsolateOperationSrc"
            case checkPlatform = "CheckPlatform"
            case requestId = "RequestId"
        }
    }
    
    /// 运行时查询木马文件信息
    @inlinable
    public func describeVirusDetail(_ input: DescribeVirusDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVirusDetailResponse > {
        self.client.execute(action: "DescribeVirusDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时查询木马文件信息
    @inlinable
    public func describeVirusDetail(_ input: DescribeVirusDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusDetailResponse {
        try await self.client.execute(action: "DescribeVirusDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
