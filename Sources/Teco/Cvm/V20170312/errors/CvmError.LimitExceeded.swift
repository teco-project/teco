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

extension TCCvmError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case associateUSGLimitExceeded = "LimitExceeded.AssociateUSGLimitExceeded"
            case cvmsVifsPerSecGroupLimitExceeded = "LimitExceeded.CvmsVifsPerSecGroupLimitExceeded"
            case disasterRecoverGroup = "LimitExceeded.DisasterRecoverGroup"
            case eipNumLimit = "LimitExceeded.EipNumLimit"
            case eniNumLimit = "LimitExceeded.EniNumLimit"
            case exportImageTaskLimitExceeded = "LimitExceeded.ExportImageTaskLimitExceeded"
            case hpcClusterQuota = "LimitExceeded.HpcClusterQuota"
            case iPv6AddressNum = "LimitExceeded.IPv6AddressNum"
            case instanceEniNumLimit = "LimitExceeded.InstanceEniNumLimit"
            case instanceQuota = "LimitExceeded.InstanceQuota"
            case instanceTypeBandwidth = "LimitExceeded.InstanceTypeBandwidth"
            case launchTemplateQuota = "LimitExceeded.LaunchTemplateQuota"
            case launchTemplateVersionQuota = "LimitExceeded.LaunchTemplateVersionQuota"
            case prepayQuota = "LimitExceeded.PrepayQuota"
            case singleUSGQuota = "LimitExceeded.SingleUSGQuota"
            case spotQuota = "LimitExceeded.SpotQuota"
            case tagResourceQuota = "LimitExceeded.TagResourceQuota"
            case userReturnQuota = "LimitExceeded.UserReturnQuota"
            case userSpotQuota = "LimitExceeded.UserSpotQuota"
            case vpcSubnetNum = "LimitExceeded.VpcSubnetNum"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 一个实例绑定安全组数量不能超过5个
        ///
        /// 无
        public static var associateUSGLimitExceeded: LimitExceeded {
            LimitExceeded(.associateUSGLimitExceeded)
        }
        
        /// 安全组关联云主机弹性网卡配额超限。
        public static var cvmsVifsPerSecGroupLimitExceeded: LimitExceeded {
            LimitExceeded(.cvmsVifsPerSecGroupLimitExceeded)
        }
        
        /// 指定置放群组配额不足。
        public static var disasterRecoverGroup: LimitExceeded {
            LimitExceeded(.disasterRecoverGroup)
        }
        
        /// 特定实例包含的某个ENI的EIP数量已超过目标实例类型的EIP允许的最大值，请删除部分EIP后重试。
        public static var eipNumLimit: LimitExceeded {
            LimitExceeded(.eipNumLimit)
        }
        
        /// 特定实例当前ENI数量已超过目标实例类型的ENI允许的最大值，需删除部分ENI后重试。
        public static var eniNumLimit: LimitExceeded {
            LimitExceeded(.eniNumLimit)
        }
        
        /// 正在运行中的镜像导出任务已达上限，请等待已有任务完成后，再次发起重试。
        public static var exportImageTaskLimitExceeded: LimitExceeded {
            LimitExceeded(.exportImageTaskLimitExceeded)
        }
        
        /// 已达创建高性能计算集群数的上限。
        public static var hpcClusterQuota: LimitExceeded {
            LimitExceeded(.hpcClusterQuota)
        }
        
        /// IP数量超过网卡上限。
        ///
        /// 暂无
        public static var iPv6AddressNum: LimitExceeded {
            LimitExceeded(.iPv6AddressNum)
        }
        
        /// 实例指定的弹性网卡数目超过了实例弹性网卡数目配额。
        ///
        /// 请确认机型的弹性网卡配额后再操作。
        public static var instanceEniNumLimit: LimitExceeded {
            LimitExceeded(.instanceEniNumLimit)
        }
        
        /// 当前配额不足够生产指定数量的实例
        ///
        /// 无
        public static var instanceQuota: LimitExceeded {
            LimitExceeded(.instanceQuota)
        }
        
        /// 目标实例规格不支持当前规格的外网带宽上限，不支持调整。具体可参考<a href="https://cloud.tencent.com/document/product/213/12523">公网网络带宽上限</a>。
        public static var instanceTypeBandwidth: LimitExceeded {
            LimitExceeded(.instanceTypeBandwidth)
        }
        
        /// 实例启动模板数量超限。
        public static var launchTemplateQuota: LimitExceeded {
            LimitExceeded(.launchTemplateQuota)
        }
        
        /// 实例启动模板版本数量超限。
        public static var launchTemplateVersionQuota: LimitExceeded {
            LimitExceeded(.launchTemplateVersionQuota)
        }
        
        /// 预付费实例已购买数量已达到最大配额，请提升配额后重试。
        public static var prepayQuota: LimitExceeded {
            LimitExceeded(.prepayQuota)
        }
        
        /// 安全组限额不足
        ///
        /// 无
        public static var singleUSGQuota: LimitExceeded {
            LimitExceeded(.singleUSGQuota)
        }
        
        /// 竞价实例类型配额不足
        ///
        /// 无
        public static var spotQuota: LimitExceeded {
            LimitExceeded(.spotQuota)
        }
        
        public static var tagResourceQuota: LimitExceeded {
            LimitExceeded(.tagResourceQuota)
        }
        
        /// 退还失败，退还配额已达上限。
        public static var userReturnQuota: LimitExceeded {
            LimitExceeded(.userReturnQuota)
        }
        
        /// 竞价实例配额不足
        ///
        /// 无
        public static var userSpotQuota: LimitExceeded {
            LimitExceeded(.userSpotQuota)
        }
        
        /// 子网IP不足
        ///
        /// 无
        public static var vpcSubnetNum: LimitExceeded {
            LimitExceeded(.vpcSubnetNum)
        }
    }
}

extension TCCvmError.LimitExceeded: Equatable {
    public static func == (lhs: TCCvmError.LimitExceeded, rhs: TCCvmError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.LimitExceeded {
    /// - Returns: ``TCCvmError`` that holds the same error and context.
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}

extension TCCvmError.LimitExceeded {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
